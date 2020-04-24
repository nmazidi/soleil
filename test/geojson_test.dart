import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:geojson/geojson.dart';

void main() {
  test("met office http get hourly forecast", () async {
    final clientId = '93a25d7a-1d1c-4f00-a15d-84687f09da70';
    final clientSecret = 'V3bB8xL7wF8uS7aL6mF8jP5jF3kP2kG1gS5mH7pP2bV4bY0fJ7';
    final Map<String, String> requestHeaders = {
      'accept': 'application/json',
      'x-ibm-client-secret': clientSecret,
      'x-ibm-client-id': clientId
    };
    final lat = '51.454514';
    final long = '-2.587910';
    final url =
        'https://api-metoffice.apiconnect.ibmcloud.com/metoffice/production/v0/forecasts/point/hourly?excludeParameterMetadata=false&includeLocationName=false&latitude=$lat&longitude=$long';

    final res = await http.get(url, headers: requestHeaders);
    if (res.statusCode == 200) {
      expect(res.body, isNotNull);
    }
  });
}