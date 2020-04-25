import 'package:drizzle_app/src/apiKeys.dart';
import 'package:drizzle_app/src/timeSeries.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as json;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test("met office http get hourly forecast and parse", () async {
    final _credentials = await loadAPIKeys();
    final _clientId = _credentials['client-id'];
    final _clientSecret = _credentials['client-secret'];

    final Map<String, String> requestHeaders = {
      'accept': 'application/json',
      'x-ibm-client-secret': _clientSecret,
      'x-ibm-client-id': _clientId
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
}
