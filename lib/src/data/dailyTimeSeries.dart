import 'dart:collection';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:soleil_app/src/serializers/serializers.dart';

part 'dailyTimeSeries.g.dart';

abstract class DailyTimeSeries
    implements Built<DailyTimeSeries, DailyTimeSeriesBuilder> {
  static Serializer<DailyTimeSeries> get serializer =>
      _$dailyTimeSeriesSerializer;

  /// The timestamp of the given forecast in yyyy-mm-ddThh:mmZ.
  DateTime get time;

  /// Wind Speed 10m above ground at midday. (m/s)
  @nullable
  double get midday10MWindSpeed;

  /// Wind Speed 10m above ground at midnight. (m/s)
  @nullable
  double get midnight10MWindSpeed;

  /// Wind from direction 10m above ground at midday. (degrees)
  @nullable
  double get midday10MWindDirection;

  /// Wind from direction 10m above ground at midnight. (degrees)
  @nullable
  double get midnight10MWindDirection;

  /// Wind gust speed at 10m above ground at midday. (m/s)
  @nullable
  double get midday10MWindGust;

  /// Wind gust speed at 10m above ground at midnight. (m/s)
  @nullable
  double get midnight10MWindGust;

  /// Visibility at midday in metres.
  @nullable
  double get middayVisibility;

  /// Visibility at midnight in metres.
  @nullable
  double get midnightVisibility;

  /// Ratio of the partial pressure of water vapor to the equilibrium
  /// vapor pressure of water at a given temperature, at midday. (%)
  @nullable
  double get middayRelativeHumidity;
  @nullable

  /// Ratio of the partial pressure of water vapor to the equilibrium
  /// vapor pressure of water at a given temperature, at midnight. (%)
  double get midnightRelativeHumidity;

  /// Mean sea level pressure: the surface pressure reduced to sea level, at midday. (Pa)
  @nullable
  int get middayMslp;

  /// Mean sea level pressure: the surface pressure reduced to sea level, at midnight. (Pa)
  @nullable
  int get midnightMslp;

  /// Maximum UV index between 1 and 11.
  /// 1-2	Low.
  /// 3-5	Moderate.
  /// 6-7	High.
  /// 8-10 Very high.
  /// 11	Extreme.
  @nullable
  int get maxUvIndex;

  /// See weatherCode.dart. (0-30)
  @nullable
  int get daySignificantWeatherCode;

  /// See weatherCode.dart. (0-30)
  @nullable
  int get nightSignificantWeatherCode;

  /// Maximum Screen Air Temperature during the day. (degrees Celsius)
  @nullable
  double get dayMaxScreenTemperature;

  /// Maximum Screen Air Temperature during the night. (degrees Celsius)
  @nullable
  double get nightMinScreenTemperature;

  /// This is the most likely maximum value over the day based on the ensemble spread. (Degrees C)
  @nullable
  double get dayMaxFeelsLikeTemp;

  /// This is the most likely minimum value over the night based on the ensemble spread. (Degrees C)
  @nullable
  double get nightMinFeelsLikeTemp;

  /// Probability of precipitation during the day. (%)
  @nullable
  double get dayProbabilityOfPrecipitation;

  /// Probability of precipitation during the night. (%)
  @nullable
  double get nightProbabilityOfPrecipitation;

  /// Probability of snow during the day. (%)
  @nullable
  double get dayProbabilityOfSnow;

  /// Probability of snow during the night. (%)
  @nullable
  double get nightProbabilityOfSnow;

  /// Probability of heavy snow during the day. (%)
  @nullable
  double get dayProbabilityOfHeavySnow;

  /// Probability of heavy snow during the night. (%)
  @nullable
  double get nightProbabilityOfHeavySnow;

  /// Probability of rain during the day. (%)
  @nullable
  double get dayProbabilityOfRain;

  /// Probability of rain during the night. (%)
  @nullable
  double get nightProbabilityOfRain;

  /// Probability of heavy rain during the day. (%)
  @nullable
  double get dayProbabilityOfHeavyRain;

  /// Probability of heavy rain during the night. (%)
  @nullable
  double get nightProbabilityOfHeavyRain;

  /// Probability of hail during the day. (%)
  @nullable
  double get dayProbabilityOfHail;

  /// Probability of hail during the night. (%)
  @nullable
  double get nightProbabilityOfHail;

  /// Probability of sferics during the day. (%)
  @nullable
  double get dayProbabilityOfSferics;

  /// Probability of sferics during the night. (%)
  @nullable
  double get nightProbabilityOfSferics;

  DailyTimeSeries._();
  factory DailyTimeSeries([void Function(DailyTimeSeriesBuilder) updates]) =
      _$DailyTimeSeries;
}

UnmodifiableListView<DailyTimeSeries> deserializeDailyData(List data) {
  return UnmodifiableListView(data
      .map((a) =>
          standardSerializers.deserializeWith(DailyTimeSeries.serializer, a))
      .toList());
}
