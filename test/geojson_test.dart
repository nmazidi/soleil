import 'package:drizzle_app/src/apiKeys.dart';
import 'package:drizzle_app/src/timeSeries.dart';
import 'package:drizzle_app/src/weatherData_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:io' as io;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  io.HttpOverrides.global  = null;

  test("met office http get hourly forecast and parse", () async {
    final _credentials = await loadAPIKeys();
    final _clientId = _credentials['client-id'];
    final _clientSecret = _credentials['client-secret'];

    final Map<String, String> requestHeaders = {
      'accept': 'application/json',
      'x-ibm-client-id': _clientId,
      'x-ibm-client-secret': _clientSecret
    };
    final lat = '51.454514';
    final long = '-2.587910';
    final url =
        'https://api-metoffice.apiconnect.ibmcloud.com/metoffice/production/v0/forecasts/point/hourly?latitude=$lat&longitude=$long';

    final res = await http.get(url, headers: requestHeaders);
    if (res.statusCode == 200) {
      final timeSeriesList = await parseHourlyData(res.body);
      expect(timeSeriesList, isNotNull);
      if (timeSeriesList.isNotEmpty) {
        deserializeHourlyData(timeSeriesList);
      }
    }
  });

  test("bloc data serialization test", () async {
    final WeatherDataBloc bloc = WeatherDataBloc();
    List<double> testCoords = [51.454514, -2.587910];
    bloc.coordinates.add(testCoords);
    expect(await bloc.timeSeriesList.first, isNotEmpty);
  });
}
