import 'dart:async';
import 'dart:collection';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;
import 'package:drizzle_app/src/timeSeries.dart';

class WeatherDataBloc {
  HashMap<int, TimeSeries> _cachedData;

  final _timeSeriesListSubject = BehaviorSubject<List<TimeSeries>>();

  Stream<List<TimeSeries>> get timeSeriesList => _timeSeriesListSubject.stream;

  var _timeSeriesList = <TimeSeries>[];

  WeatherDataBloc() {
    _cachedData = HashMap<int, TimeSeries>();
  }
}
