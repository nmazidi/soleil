import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:geojson/geojson.dart';
import 'serializers.dart';

part 'dailyTimeSeries.g.dart';

abstract class DailyTimeSeries implements Built<DailyTimeSeries, DailyTimeSeriesBuilder> {
  static Serializer<DailyTimeSeries> get serializer => _$dailyTimeSeriesSerializer;

  DailyTimeSeries._();
  factory DailyTimeSeries([void Function(DailyTimeSeriesBuilder) updates]) = _$DailyTimeSeries;
}

Future<List> parseDailyData(String data) async {
  final _feature = (await featuresFromGeoJson(data)).collection[0];
  return _feature.properties.entries
      .where((a) => a.key.contains("timeSeries"))
      .toList()[0]
      .value;
}

List<DailyTimeSeries> deserializeHourlyData(List data) {
  return data
      .map((a) => standardSerializers.deserializeWith(DailyTimeSeries.serializer, a))
      .toList();
}