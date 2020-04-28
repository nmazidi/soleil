import 'dart:async';
import 'dart:io';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'timeSeries.dart';
import 'apiKeys.dart';

class WeatherDataBloc {
  final _timeSeriesListSubject = BehaviorSubject<List<TimeSeries>>();
  final _coordinatesController = StreamController<List<double>>();

  Stream<List<TimeSeries>> get timeSeriesList => _timeSeriesListSubject.stream;
  Sink<List<double>> get coordinates => _coordinatesController.sink;

  // API keys and URL
  static String _clientID, _clientSecret;
  static const _baseUrl =
      'https://api-metoffice.apiconnect.ibmcloud.com/metoffice/production/v0/forecasts/point/hourly?';

  WeatherDataBloc() {
    // Load API keys from secret json file that isn't included in version control
    loadAPIKeys().then((credentials) {
      _clientID = credentials['client-id'];
      _clientSecret = credentials['client-secret'];
    });

    // Get default coordinates from shared preferences on disk
    SharedPreferences.getInstance().then((prefs) {
      if (prefs.getBool('default_coords_set') ?? false) {
        coordinates.add(
            [prefs.getDouble('default_lat'), prefs.getDouble('default_long')]);
      }
    });
    // Listen to a change to the requested coordinates and execute
    _coordinatesController.stream.listen((coordinates) async {
      _getWeatherData(coordinates);
    });
  }

  Future<void> _getWeatherData(List<double> coordinates) async {
    final Map<String, String> requestHeaders = {
      'accept': 'application/json',
      'x-ibm-client-id': _clientID,
      'x-ibm-client-secret': _clientSecret
    };
    final _url =
        '${_baseUrl}latitude=${coordinates[0]}&longitude=${coordinates[1]}';
    final res = await http.get(_url, headers: requestHeaders);
    if (res.statusCode == 200) {
      final timeSeriesList = await parseHourlyData(res.body);
      if (timeSeriesList.isNotEmpty) {
        final test = deserializeHourlyData(timeSeriesList);
        _timeSeriesListSubject.add(test);
      }
    } else {
      throw HttpException(res.body);
    }
  }

  Future<void> saveDefaultLocation(List<double> coordinates) async {
    final perfs = await SharedPreferences.getInstance();
    perfs.setDouble('default_lat', coordinates[0]);
    perfs.setDouble('default_long', coordinates[1]);
    perfs.setBool('default_coords_set', true);
  }

  void close() {
    _coordinatesController.close();
  }
}
