import 'dart:async';
import 'dart:collection';
import 'package:geocoder/geocoder.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soleil_app/src/data/dataType.dart';
import 'package:soleil_app/src/data/hourlyTimeSeries.dart';
import 'package:soleil_app/src/data/dailyTimeSeries.dart';
import 'package:soleil_app/src/apiKeys.dart';
import 'package:soleil_app/src/exceptions.dart';
import 'package:soleil_app/src/utilities.dart';

class WeatherDataBloc {
  final _hourlyTimeSeriesListSubject =
      BehaviorSubject<UnmodifiableListView<HourlyTimeSeries>>();
  final _dailyTimeSeriesListSubject = BehaviorSubject<UnmodifiableListView<DailyTimeSeries>>();
  final _coordinatesController = StreamController<Coordinates>();

  Stream<UnmodifiableListView<HourlyTimeSeries>> get hourlyTimeSeriesList =>
      _hourlyTimeSeriesListSubject.stream;
  Stream<UnmodifiableListView<DailyTimeSeries>> get dailyTimeSeriesList =>
      _dailyTimeSeriesListSubject.stream;
  Sink<Coordinates> get coordinates => _coordinatesController.sink;

  // API keys and URL
  static Map<String, String> _credentials;

  WeatherDataBloc() {
    // Load API keys from secret json file that isn't included in version control
    loadAPIKeys().then((credentials) {
      _credentials = Map.from(credentials['http-request-headers']);
    });

    // Get default coordinates from shared preferences on disk
    SharedPreferences.getInstance().then((prefs) {
      if (prefs.getBool('default_coords_set') ?? false) {
        coordinates.add(Coordinates(
            prefs.getDouble('default_lat'), prefs.getDouble('default_long')));
      }
    }).catchError((onError) => print('Cannot access shared prefs.'));

    // Listen to a change to the requested coordinates and execute
    _coordinatesController.stream.listen((coordinates) async {
      _updateWeatherData(DataType.DAILY, coordinates);
      _updateWeatherData(DataType.HOURLY, coordinates);
    });
  }

  Future<void> _updateWeatherData(
      DataType type, Coordinates coordinates) async {
    List timeSeriesList;
    timeSeriesList = await _getWeatherData(type, coordinates);
    if (timeSeriesList.isNotEmpty) {
      // Deserialise the data into xTimeSeries objects and add to BehaviourSubject.
      switch (type) {
        case DataType.HOURLY:
          var threeHourlyData = await _getAndParseThreeHourlyData(coordinates);
          // Remove data that already exists in hourlyData
          threeHourlyData.removeRange(0, (timeSeriesList.length ~/ 3) + 1);
          // Combine hourly date with three hourly data.
          timeSeriesList.addAll(threeHourlyData);
          _hourlyTimeSeriesListSubject.add(deserializeHourlyData(
              timeSeriesList, timeSeriesList.length - threeHourlyData.length));
          break;
        case DataType.DAILY:
          _dailyTimeSeriesListSubject.add(deserializeDailyData(timeSeriesList));
          break;
        default:
          throw MetOfficeApiError(
              'Invalid DataType ($type) when updating weather data.');
      }
    }
  }

  Future<List> _getWeatherData(DataType type, Coordinates coordinates) async {
    // API http request url.
    final _url =
        '${getBaseUrl(type)}latitude=${coordinates.latitude}&longitude=${coordinates.longitude}';
    final res = await http.get(_url, headers: _credentials);
    if (res.statusCode == 200) {
      // Get list of hourly data as geojson.
      return await parseMetOfficeData(res.body);
    } else {
      throw MetOfficeApiError('HTTP GET request error: ${res.body}');
    }
  }

  Future<List> _getAndParseThreeHourlyData(Coordinates coordinates) async {
    var threeHourlyData =
        await _getWeatherData(DataType.THREEHOURLY, coordinates);
    threeHourlyData.map((ts) {
      ts['feelsLikeTemperature'] = ts['feelsLikeTemp'];
      ts['screenTemperature'] =
          (ts['maxScreenAirTemp'] + ts['minScreenAirTemp']) / 2;
    }).toList();
    return threeHourlyData;
  }

  Future<void> saveDefaultLocation(Coordinates coordinates) async {
    // Load shared preferences from disk.
    final perfs = await SharedPreferences.getInstance();
    perfs.setDouble('default_lat', coordinates.latitude);
    perfs.setDouble('default_long', coordinates.longitude);
    perfs.setBool('default_coords_set', true);
    this.coordinates.add(coordinates);
  }

  void close() {
    _coordinatesController.close();
  }
}
