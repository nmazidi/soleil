import 'dart:convert' as json;
import 'package:flutter/services.dart';

Future<Map> loadAPIKeys() async {
  return json.jsonDecode(await rootBundle.loadString('assets/api_keys.json'));
}