import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:soleil_app/src/serializers/serializers.dart';

part 'hourlyTimeSeries.g.dart';

abstract class HourlyTimeSeries
    implements Built<HourlyTimeSeries, HourlyTimeSeriesBuilder> {
  static Serializer<HourlyTimeSeries> get serializer =>
      _$hourlyTimeSeriesSerializer;

  /// The timestamp of the given forecast in yyyy-mm-ddThh:mmZ.
  DateTime get time;

  /// The air temperature as measured on a Stevenson screen. (degrees Celsius)
  double get screenTemperature;

  /// Maximum Screen Air Temperature Over Previous Hour. (degrees Celsius)
  @nullable
  double get maxScreenAirTemp;

  /// Minimum Screen Air Temperature Over Previous Hour. (degrees Celsius)
  @nullable
  double get minScreenAirTemp;

  /// The temperature at which the air can no longer "hold" all of the
  /// water vapor which is mixed with it. (<= air temperature) (degrees Celsius)
  @nullable
  double get screenDewPointTemperature;

  /// Takes into account wind speeds and humidity to assess how the human
  /// body actually feels temperature. (degrees Celsius)
  @nullable
  double get feelsLikeTemperature;

  /// Wind Speed 10m above ground. (m/s)
  @nullable
  double get windSpeed10m;

  /// Wind from direction 10m above ground. (degrees)
  @nullable
  double get windDirectionFrom10m;

  /// Wind gust speed at 10m above ground. (m/s)
  @nullable
  double get windGustSpeed10m;

  /// Maximum wind gust speed over previous hour at 10m above ground. (m/s)
  @nullable
  double get max10mWindGust;

  /// Visibility in metres.
  @nullable
  double get visibility;

  /// Ratio of the partial pressure of water vapor to the equilibrium
  /// vapor pressure of water at a given temperature. (%)
  @nullable
  double get screenRelativeHumidity;

  /// Mean sea level pressure: the surface pressure reduced to sea level. (Pa)
  @nullable
  int get mslp;

  /// UV index between 1 and 11.
  /// 1-2	Low.
  /// 3-5	Moderate.
  /// 6-7	High.
  /// 8-10 Very high.
  /// 11	Extreme.
  @nullable
  int get uvIndex;

  /// See weatherCode.dart. (0-30)
  @nullable
  int get significantWeatherCode;

  /// The rate of precipitation over square footage of the zone. (mm/h)
  @nullable
  double get precipitationRate;

  /// Total precipitation amount over previous hour. (mm)
  @nullable
  double get totalPrecipAmount;

  /// Total amount of snow over the previous hour. (mm)
  @nullable
  double get totalSnowAmount;

  /// Probability of precipitation. (%)
  @nullable
  double get probOfPrecipitation;

  HourlyTimeSeries._();
  factory HourlyTimeSeries([void Function(HourlyTimeSeriesBuilder) updates]) =
      _$HourlyTimeSeries;
}

List<HourlyTimeSeries> deserializeHourlyData(List data, int count) {
  final deserializedData = data
      .map((a) =>
          standardSerializers.deserializeWith(HourlyTimeSeries.serializer, a))
      .toList();
  List<HourlyTimeSeries> newList = [];
  for (; count < data.length; count++) {
    var newEntries = [
      deserializedData[count].rebuild((updates) =>
          updates..time = deserializedData[count].time.add(Duration(hours: 1))),
      deserializedData[count].rebuild((updates) =>
          updates..time = deserializedData[count].time.add(Duration(hours: 2)))
    ];
    newList.addAll(newEntries);
  }
  deserializedData.addAll(newList);
  // Sort the combined list in terms of time.
  deserializedData.sort((a, b) => a.time.compareTo(b.time));
  return deserializedData;
}
