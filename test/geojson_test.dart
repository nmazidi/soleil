import 'package:soleil_app/src/apiKeys.dart';
import 'package:soleil_app/src/data/hourlyTimeSeries.dart';
import 'package:soleil_app/src/utilities.dart';
import 'package:soleil_app/src/weatherData_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geocoder/geocoder.dart';
import 'package:http/http.dart' as http;
import 'dart:io' as io;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  io.HttpOverrides.global = null;

  test("met office http get hourly forecast and parse", () async {
    Map<String, String> _credentials;
    await loadAPIKeys().then((creds) {
      _credentials = Map.from(creds['http-request-headers']);
    });
    final lat = '51.454514';
    final long = '-2.587910';
    String url =
        'https://api-metoffice.apiconnect.ibmcloud.com/metoffice/production/v0/forecasts/point/hourly?latitude=$lat&longitude=$long';

    final res = await http.get(url, headers: _credentials);
    if (res.statusCode == 200) {
      final timeSeriesList = await parseMetOfficeData(res.body);
      expect(timeSeriesList, isNotEmpty);
      // Get three hourly data
      url =
          'https://api-metoffice.apiconnect.ibmcloud.com/metoffice/production/v0/forecasts/point/three-hourly?latitude=$lat&longitude=$long';
      final res2 = await http.get(url, headers: _credentials);
      if (res2.statusCode == 200) {
        final threeHourlyData = await parseMetOfficeData(res.body);
        // Remove data that already exists in hourlyData
        threeHourlyData.removeRange(0, (timeSeriesList.length ~/ 3) + 1);
        // Combine hourly date with three hourly data.
        timeSeriesList.addAll(threeHourlyData);
        if (timeSeriesList.isNotEmpty) {
          final _deserializedData = deserializeHourlyData(
              timeSeriesList, timeSeriesList.length - threeHourlyData.length);
          expect(_deserializedData, isNotNull);
        }
      }
    }
  });

  test("bloc data serialization test", () async {
    final WeatherDataBloc bloc = WeatherDataBloc();
    Coordinates testCoords = Coordinates(51.454514, -2.587910);
    bloc.coordinates.add(testCoords);
    expect(await bloc.hourlyTimeSeriesList.first, isNotEmpty);
  });
}
