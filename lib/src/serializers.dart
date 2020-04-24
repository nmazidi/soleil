library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'timeSeries.dart';

part 'serializers.g.dart';

@SerializersFor([
  TimeSeries,
])

Serializers serializers = _$serializers;
Serializers standardSerializers = (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();