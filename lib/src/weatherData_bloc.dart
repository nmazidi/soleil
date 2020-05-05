import 'dart:async';
import 'dart:io';
import 'package:geocoder/geocoder.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soleil_app/src/data/hourlyTimeSeries.dart';
import 'apiKeys.dart';

class WeatherDataBloc {
  final _timeSeriesListSubject = BehaviorSubject<List<HourlyTimeSeries>>();
  final _coordinatesController = StreamController<Coordinates>();

  Stream<List<HourlyTimeSeries>> get hourlyTimeSeriesList => _timeSeriesListSubject.stream;
  Sink<Coordinates> get coordinates => _coordinatesController.sink;

  // API keys and URL
  static Map<String, String> _credentials;
  static const _baseUrl =
      'https://api-metoffice.apiconnect.ibmcloud.com/metoffice/production/v0/forecasts/point/hourly?';

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
    });
    // Listen to a change to the requested coordinates and execute
    _coordinatesController.stream
        .listen((coordinates) async => _updateWeatherData(coordinates));
  }

  Future<void> _updateWeatherData(Coordinates coordinates) async {
    // API http request url.
    final _url =
        '${_baseUrl}latitude=${coordinates.latitude}&longitude=${coordinates.longitude}';
    final res = await http.get(_url, headers: _credentials);
    if (res.statusCode == 200) {
      // Get list of hourly data as geojson.
      final hourlyTimeSeriesList = await parseHourlyData(res.body);
      if (hourlyTimeSeriesList.isNotEmpty) {
        // Deserialise the data into HourlyTimeSeries objects and add to BehaviourSubject.
        _timeSeriesListSubject.add(deserializeHourlyData(hourlyTimeSeriesList));
      }
    } else {
      throw HttpException(res.body);
    }
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
