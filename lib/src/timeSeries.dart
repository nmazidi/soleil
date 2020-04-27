import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:geojson/geojson.dart';
import 'serializers.dart';

part 'timeSeries.g.dart';

abstract class TimeSeries implements Built<TimeSeries, TimeSeriesBuilder> {
  static Serializer<TimeSeries> get serializer => _$timeSeriesSerializer;

  /// The timestamp of the given forecast in yyyy-mm-ddThh:mmZ.
  String get time;

  /// The air temperature as measured on a Stevenson screen. (degrees Celsius)
  double get screenTemperature;

  /// Maximum Screen Air Temperature Over Previous Hour. (degrees Celsius)
  double get maxScreenAirTemp;

  /// Minimum Screen Air Temperature Over Previous Hour. (degrees Celsius)
  double get minScreenAirTemp;

  /// The temperature at which the air can no longer "hold" all of the
  /// water vapor which is mixed with it. (<= air temperature) (degrees Celsius)
  double get screenDewPointTemperature;

  /// Takes into account wind speeds and humidity to assess how the human
  /// body actually feels temperature. (degrees Celsius)
  double get feelsLikeTemperature;

  /// Wind Speed 10m above ground. (m/s)
  double get windSpeed10m;

  /// Wind from direction 10m above ground. (degrees)
  double get windDirectionFrom10m;

  /// Wind gust speed at 10m above ground. (m/s)
  double get windGustSpeed10m;

  /// Maximum wind gust speed over previous hour at 10m above ground. (m/s)
  double get max10mWindGust;

  /// Visibility in metres.
  double get visibility;

  /// Ratio of the partial pressure of water vapor to the equilibrium
  /// vapor pressure of water at a given temperature. (%)
  double get screenRelativeHumidity;

  /// Mean sea level pressure: the surface pressure reduced to sea level. (Pa)
  int get mslp;

  /// UV index between 1 and 11.
  /// 1-2	Low.
  /// 3-5	Moderate.
  /// 6-7	High.
  /// 8-10 Very high.
  /// 11	Extreme.
  int get uvIndex;

  /// See weatherCode.dart. (0-30)
  int get significantWeatherCode;

  /// The rate of precipitation over square footage of the zone. (mm/h)
  double get precipitationRate;

  /// Total precipitation amount over previous hour. (mm)
  double get totalPrecipAmount;

  /// Total amount of snow over the previous hour. (mm)
  double get totalSnowAmount;

  /// Probability of precipitation. (%)
  int get probOfPrecipitation;

  TimeSeries._();
  factory TimeSeries([void Function(TimeSeriesBuilder) updates]) = _$TimeSeries;
}

Future<List> parseHourlyData(String data) async {
  final _feature = (await featuresFromGeoJson(data)).collection[0];
  return _feature.properties.entries
      .where((a) => a.key.contains("timeSeries"))
      .toList()[0]
      .value;
}

List<TimeSeries> deserializeHourlyData(List data) {
  return data.map(
      (a) => standardSerializers.deserializeWith(TimeSeries.serializer, a)).toList();
}
