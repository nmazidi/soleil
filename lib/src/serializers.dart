library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:soleil_app/src/hourlyTimeSeries.dart';
import 'package:soleil_app/src/dailyTimeSeries.dart';

part 'serializers.g.dart';

@SerializersFor([
  HourlyTimeSeries,
  DailyTimeSeries,
])

Serializers serializers = _$serializers;
Serializers standardSerializers = (serializers.toBuilder()..add(Iso8601DateTimeSerializer())..addPlugin(StandardJsonPlugin())).build();