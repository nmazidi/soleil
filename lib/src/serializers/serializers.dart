library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:soleil_app/src/data/hourlyTimeSeries.dart';
import 'package:soleil_app/src/data/dailyTimeSeries.dart';
import 'package:soleil_app/src/data/mapOverlayImagery.dart';

part 'serializers.g.dart';

@SerializersFor([
  HourlyTimeSeries,
  DailyTimeSeries,
  MapOverlayImagery
])

Serializers serializers = _$serializers;
Serializers standardSerializers = (serializers.toBuilder()..add(Iso8601DateTimeSerializer())..addPlugin(StandardJsonPlugin())).build();