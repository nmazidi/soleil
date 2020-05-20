import 'dart:collection';
import 'dart:convert' as json;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:soleil_app/src/serializers/serializers.dart';

part 'mapOverlayImagery.g.dart';

abstract class MapOverlayImagery
    implements Built<MapOverlayImagery, MapOverlayImageryBuilder> {
  static Serializer<MapOverlayImagery> get serializer =>
      _$mapOverlayImagerySerializer;

  /// Name of the image overlay layer.
  String get layerName;

  /// Format of the imge (usually .png).
  String get imageFormat;

  /// The base time for the data.
  DateTime get defaultTime;

  /// Steps in time to add on to defaultTime.
  List<int> get timeSteps;

  /// URL for getting the images.
  String get baseUrl;

  MapOverlayImagery._();
  factory MapOverlayImagery([void Function(MapOverlayImageryBuilder) updates]) =
      _$MapOverlayImagery;
}

Future<List> parseMapOverlayData(String data) async {
  final parsed = json.jsonDecode(data);
  
}

List<MapOverlayImagery> deserializeMapOverlayData() {

} 