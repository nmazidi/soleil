// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dailyTimeSeries.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyTimeSeries> _$dailyTimeSeriesSerializer =
    new _$DailyTimeSeriesSerializer();

class _$DailyTimeSeriesSerializer
    implements StructuredSerializer<DailyTimeSeries> {
  @override
  final Iterable<Type> types = const [DailyTimeSeries, _$DailyTimeSeries];
  @override
  final String wireName = 'DailyTimeSeries';

  @override
  Iterable<Object> serialize(Serializers serializers, DailyTimeSeries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'time',
      serializers.serialize(object.time,
          specifiedType: const FullType(DateTime)),
    ];
    if (object.midday10MWindSpeed != null) {
      result
        ..add('midday10MWindSpeed')
        ..add(serializers.serialize(object.midday10MWindSpeed,
            specifiedType: const FullType(double)));
    }
    if (object.midnight10MWindSpeed != null) {
      result
        ..add('midnight10MWindSpeed')
        ..add(serializers.serialize(object.midnight10MWindSpeed,
            specifiedType: const FullType(double)));
    }
    if (object.midday10MWindDirection != null) {
      result
        ..add('midday10MWindDirection')
        ..add(serializers.serialize(object.midday10MWindDirection,
            specifiedType: const FullType(double)));
    }
    if (object.midnight10MWindDirection != null) {
      result
        ..add('midnight10MWindDirection')
        ..add(serializers.serialize(object.midnight10MWindDirection,
            specifiedType: const FullType(double)));
    }
    if (object.midday10MWindGust != null) {
      result
        ..add('midday10MWindGust')
        ..add(serializers.serialize(object.midday10MWindGust,
            specifiedType: const FullType(double)));
    }
    if (object.midnight10MWindGust != null) {
      result
        ..add('midnight10MWindGust')
        ..add(serializers.serialize(object.midnight10MWindGust,
            specifiedType: const FullType(double)));
    }
    if (object.middayVisibility != null) {
      result
        ..add('middayVisibility')
        ..add(serializers.serialize(object.middayVisibility,
            specifiedType: const FullType(double)));
    }
    if (object.midnightVisibility != null) {
      result
        ..add('midnightVisibility')
        ..add(serializers.serialize(object.midnightVisibility,
            specifiedType: const FullType(double)));
    }
    if (object.middayRelativeHumidity != null) {
      result
        ..add('middayRelativeHumidity')
        ..add(serializers.serialize(object.middayRelativeHumidity,
            specifiedType: const FullType(double)));
    }
    if (object.midnightRelativeHumidity != null) {
      result
        ..add('midnightRelativeHumidity')
        ..add(serializers.serialize(object.midnightRelativeHumidity,
            specifiedType: const FullType(double)));
    }
    if (object.middayMslp != null) {
      result
        ..add('middayMslp')
        ..add(serializers.serialize(object.middayMslp,
            specifiedType: const FullType(int)));
    }
    if (object.midnightMslp != null) {
      result
        ..add('midnightMslp')
        ..add(serializers.serialize(object.midnightMslp,
            specifiedType: const FullType(int)));
    }
    if (object.maxUvIndex != null) {
      result
        ..add('maxUvIndex')
        ..add(serializers.serialize(object.maxUvIndex,
            specifiedType: const FullType(int)));
    }
    if (object.daySignificantWeatherCode != null) {
      result
        ..add('daySignificantWeatherCode')
        ..add(serializers.serialize(object.daySignificantWeatherCode,
            specifiedType: const FullType(int)));
    }
    if (object.nightSignificantWeatherCode != null) {
      result
        ..add('nightSignificantWeatherCode')
        ..add(serializers.serialize(object.nightSignificantWeatherCode,
            specifiedType: const FullType(int)));
    }
    if (object.dayMaxScreenTemperature != null) {
      result
        ..add('dayMaxScreenTemperature')
        ..add(serializers.serialize(object.dayMaxScreenTemperature,
            specifiedType: const FullType(double)));
    }
    if (object.nightMinScreenTemperature != null) {
      result
        ..add('nightMinScreenTemperature')
        ..add(serializers.serialize(object.nightMinScreenTemperature,
            specifiedType: const FullType(double)));
    }
    if (object.dayMaxFeelsLikeTemp != null) {
      result
        ..add('dayMaxFeelsLikeTemp')
        ..add(serializers.serialize(object.dayMaxFeelsLikeTemp,
            specifiedType: const FullType(double)));
    }
    if (object.nightMinFeelsLikeTemp != null) {
      result
        ..add('nightMinFeelsLikeTemp')
        ..add(serializers.serialize(object.nightMinFeelsLikeTemp,
            specifiedType: const FullType(double)));
    }
    if (object.dayProbabilityOfPrecipitation != null) {
      result
        ..add('dayProbabilityOfPrecipitation')
        ..add(serializers.serialize(object.dayProbabilityOfPrecipitation,
            specifiedType: const FullType(double)));
    }
    if (object.nightProbabilityOfPrecipitation != null) {
      result
        ..add('nightProbabilityOfPrecipitation')
        ..add(serializers.serialize(object.nightProbabilityOfPrecipitation,
            specifiedType: const FullType(double)));
    }
    if (object.dayProbabilityOfSnow != null) {
      result
        ..add('dayProbabilityOfSnow')
        ..add(serializers.serialize(object.dayProbabilityOfSnow,
            specifiedType: const FullType(double)));
    }
    if (object.nightProbabilityOfSnow != null) {
      result
        ..add('nightProbabilityOfSnow')
        ..add(serializers.serialize(object.nightProbabilityOfSnow,
            specifiedType: const FullType(double)));
    }
    if (object.dayProbabilityOfHeavySnow != null) {
      result
        ..add('dayProbabilityOfHeavySnow')
        ..add(serializers.serialize(object.dayProbabilityOfHeavySnow,
            specifiedType: const FullType(double)));
    }
    if (object.nightProbabilityOfHeavySnow != null) {
      result
        ..add('nightProbabilityOfHeavySnow')
        ..add(serializers.serialize(object.nightProbabilityOfHeavySnow,
            specifiedType: const FullType(double)));
    }
    if (object.dayProbabilityOfRain != null) {
      result
        ..add('dayProbabilityOfRain')
        ..add(serializers.serialize(object.dayProbabilityOfRain,
            specifiedType: const FullType(double)));
    }
    if (object.nightProbabilityOfRain != null) {
      result
        ..add('nightProbabilityOfRain')
        ..add(serializers.serialize(object.nightProbabilityOfRain,
            specifiedType: const FullType(double)));
    }
    if (object.dayProbabilityOfHeavyRain != null) {
      result
        ..add('dayProbabilityOfHeavyRain')
        ..add(serializers.serialize(object.dayProbabilityOfHeavyRain,
            specifiedType: const FullType(double)));
    }
    if (object.nightProbabilityOfHeavyRain != null) {
      result
        ..add('nightProbabilityOfHeavyRain')
        ..add(serializers.serialize(object.nightProbabilityOfHeavyRain,
            specifiedType: const FullType(double)));
    }
    if (object.dayProbabilityOfHail != null) {
      result
        ..add('dayProbabilityOfHail')
        ..add(serializers.serialize(object.dayProbabilityOfHail,
            specifiedType: const FullType(double)));
    }
    if (object.nightProbabilityOfHail != null) {
      result
        ..add('nightProbabilityOfHail')
        ..add(serializers.serialize(object.nightProbabilityOfHail,
            specifiedType: const FullType(double)));
    }
    if (object.dayProbabilityOfSferics != null) {
      result
        ..add('dayProbabilityOfSferics')
        ..add(serializers.serialize(object.dayProbabilityOfSferics,
            specifiedType: const FullType(double)));
    }
    if (object.nightProbabilityOfSferics != null) {
      result
        ..add('nightProbabilityOfSferics')
        ..add(serializers.serialize(object.nightProbabilityOfSferics,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  DailyTimeSeries deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyTimeSeriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'midday10MWindSpeed':
          result.midday10MWindSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'midnight10MWindSpeed':
          result.midnight10MWindSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'midday10MWindDirection':
          result.midday10MWindDirection = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'midnight10MWindDirection':
          result.midnight10MWindDirection = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'midday10MWindGust':
          result.midday10MWindGust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'midnight10MWindGust':
          result.midnight10MWindGust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'middayVisibility':
          result.middayVisibility = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'midnightVisibility':
          result.midnightVisibility = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'middayRelativeHumidity':
          result.middayRelativeHumidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'midnightRelativeHumidity':
          result.midnightRelativeHumidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'middayMslp':
          result.middayMslp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'midnightMslp':
          result.midnightMslp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'maxUvIndex':
          result.maxUvIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'daySignificantWeatherCode':
          result.daySignificantWeatherCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'nightSignificantWeatherCode':
          result.nightSignificantWeatherCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'dayMaxScreenTemperature':
          result.dayMaxScreenTemperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nightMinScreenTemperature':
          result.nightMinScreenTemperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dayMaxFeelsLikeTemp':
          result.dayMaxFeelsLikeTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nightMinFeelsLikeTemp':
          result.nightMinFeelsLikeTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dayProbabilityOfPrecipitation':
          result.dayProbabilityOfPrecipitation = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nightProbabilityOfPrecipitation':
          result.nightProbabilityOfPrecipitation = serializers.deserialize(
              value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dayProbabilityOfSnow':
          result.dayProbabilityOfSnow = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nightProbabilityOfSnow':
          result.nightProbabilityOfSnow = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dayProbabilityOfHeavySnow':
          result.dayProbabilityOfHeavySnow = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nightProbabilityOfHeavySnow':
          result.nightProbabilityOfHeavySnow = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dayProbabilityOfRain':
          result.dayProbabilityOfRain = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nightProbabilityOfRain':
          result.nightProbabilityOfRain = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dayProbabilityOfHeavyRain':
          result.dayProbabilityOfHeavyRain = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nightProbabilityOfHeavyRain':
          result.nightProbabilityOfHeavyRain = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dayProbabilityOfHail':
          result.dayProbabilityOfHail = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nightProbabilityOfHail':
          result.nightProbabilityOfHail = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dayProbabilityOfSferics':
          result.dayProbabilityOfSferics = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nightProbabilityOfSferics':
          result.nightProbabilityOfSferics = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$DailyTimeSeries extends DailyTimeSeries {
  @override
  final DateTime time;
  @override
  final double midday10MWindSpeed;
  @override
  final double midnight10MWindSpeed;
  @override
  final double midday10MWindDirection;
  @override
  final double midnight10MWindDirection;
  @override
  final double midday10MWindGust;
  @override
  final double midnight10MWindGust;
  @override
  final double middayVisibility;
  @override
  final double midnightVisibility;
  @override
  final double middayRelativeHumidity;
  @override
  final double midnightRelativeHumidity;
  @override
  final int middayMslp;
  @override
  final int midnightMslp;
  @override
  final int maxUvIndex;
  @override
  final int daySignificantWeatherCode;
  @override
  final int nightSignificantWeatherCode;
  @override
  final double dayMaxScreenTemperature;
  @override
  final double nightMinScreenTemperature;
  @override
  final double dayMaxFeelsLikeTemp;
  @override
  final double nightMinFeelsLikeTemp;
  @override
  final double dayProbabilityOfPrecipitation;
  @override
  final double nightProbabilityOfPrecipitation;
  @override
  final double dayProbabilityOfSnow;
  @override
  final double nightProbabilityOfSnow;
  @override
  final double dayProbabilityOfHeavySnow;
  @override
  final double nightProbabilityOfHeavySnow;
  @override
  final double dayProbabilityOfRain;
  @override
  final double nightProbabilityOfRain;
  @override
  final double dayProbabilityOfHeavyRain;
  @override
  final double nightProbabilityOfHeavyRain;
  @override
  final double dayProbabilityOfHail;
  @override
  final double nightProbabilityOfHail;
  @override
  final double dayProbabilityOfSferics;
  @override
  final double nightProbabilityOfSferics;

  factory _$DailyTimeSeries([void Function(DailyTimeSeriesBuilder) updates]) =>
      (new DailyTimeSeriesBuilder()..update(updates)).build();

  _$DailyTimeSeries._(
      {this.time,
      this.midday10MWindSpeed,
      this.midnight10MWindSpeed,
      this.midday10MWindDirection,
      this.midnight10MWindDirection,
      this.midday10MWindGust,
      this.midnight10MWindGust,
      this.middayVisibility,
      this.midnightVisibility,
      this.middayRelativeHumidity,
      this.midnightRelativeHumidity,
      this.middayMslp,
      this.midnightMslp,
      this.maxUvIndex,
      this.daySignificantWeatherCode,
      this.nightSignificantWeatherCode,
      this.dayMaxScreenTemperature,
      this.nightMinScreenTemperature,
      this.dayMaxFeelsLikeTemp,
      this.nightMinFeelsLikeTemp,
      this.dayProbabilityOfPrecipitation,
      this.nightProbabilityOfPrecipitation,
      this.dayProbabilityOfSnow,
      this.nightProbabilityOfSnow,
      this.dayProbabilityOfHeavySnow,
      this.nightProbabilityOfHeavySnow,
      this.dayProbabilityOfRain,
      this.nightProbabilityOfRain,
      this.dayProbabilityOfHeavyRain,
      this.nightProbabilityOfHeavyRain,
      this.dayProbabilityOfHail,
      this.nightProbabilityOfHail,
      this.dayProbabilityOfSferics,
      this.nightProbabilityOfSferics})
      : super._() {
    if (time == null) {
      throw new BuiltValueNullFieldError('DailyTimeSeries', 'time');
    }
  }

  @override
  DailyTimeSeries rebuild(void Function(DailyTimeSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyTimeSeriesBuilder toBuilder() =>
      new DailyTimeSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyTimeSeries &&
        time == other.time &&
        midday10MWindSpeed == other.midday10MWindSpeed &&
        midnight10MWindSpeed == other.midnight10MWindSpeed &&
        midday10MWindDirection == other.midday10MWindDirection &&
        midnight10MWindDirection == other.midnight10MWindDirection &&
        midday10MWindGust == other.midday10MWindGust &&
        midnight10MWindGust == other.midnight10MWindGust &&
        middayVisibility == other.middayVisibility &&
        midnightVisibility == other.midnightVisibility &&
        middayRelativeHumidity == other.middayRelativeHumidity &&
        midnightRelativeHumidity == other.midnightRelativeHumidity &&
        middayMslp == other.middayMslp &&
        midnightMslp == other.midnightMslp &&
        maxUvIndex == other.maxUvIndex &&
        daySignificantWeatherCode == other.daySignificantWeatherCode &&
        nightSignificantWeatherCode == other.nightSignificantWeatherCode &&
        dayMaxScreenTemperature == other.dayMaxScreenTemperature &&
        nightMinScreenTemperature == other.nightMinScreenTemperature &&
        dayMaxFeelsLikeTemp == other.dayMaxFeelsLikeTemp &&
        nightMinFeelsLikeTemp == other.nightMinFeelsLikeTemp &&
        dayProbabilityOfPrecipitation == other.dayProbabilityOfPrecipitation &&
        nightProbabilityOfPrecipitation ==
            other.nightProbabilityOfPrecipitation &&
        dayProbabilityOfSnow == other.dayProbabilityOfSnow &&
        nightProbabilityOfSnow == other.nightProbabilityOfSnow &&
        dayProbabilityOfHeavySnow == other.dayProbabilityOfHeavySnow &&
        nightProbabilityOfHeavySnow == other.nightProbabilityOfHeavySnow &&
        dayProbabilityOfRain == other.dayProbabilityOfRain &&
        nightProbabilityOfRain == other.nightProbabilityOfRain &&
        dayProbabilityOfHeavyRain == other.dayProbabilityOfHeavyRain &&
        nightProbabilityOfHeavyRain == other.nightProbabilityOfHeavyRain &&
        dayProbabilityOfHail == other.dayProbabilityOfHail &&
        nightProbabilityOfHail == other.nightProbabilityOfHail &&
        dayProbabilityOfSferics == other.dayProbabilityOfSferics &&
        nightProbabilityOfSferics == other.nightProbabilityOfSferics;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, time.hashCode), midday10MWindSpeed.hashCode), midnight10MWindSpeed.hashCode), midday10MWindDirection.hashCode), midnight10MWindDirection.hashCode), midday10MWindGust.hashCode), midnight10MWindGust.hashCode), middayVisibility.hashCode), midnightVisibility.hashCode), middayRelativeHumidity.hashCode), midnightRelativeHumidity.hashCode), middayMslp.hashCode), midnightMslp.hashCode), maxUvIndex.hashCode), daySignificantWeatherCode.hashCode),
                                                                                nightSignificantWeatherCode.hashCode),
                                                                            dayMaxScreenTemperature.hashCode),
                                                                        nightMinScreenTemperature.hashCode),
                                                                    dayMaxFeelsLikeTemp.hashCode),
                                                                nightMinFeelsLikeTemp.hashCode),
                                                            dayProbabilityOfPrecipitation.hashCode),
                                                        nightProbabilityOfPrecipitation.hashCode),
                                                    dayProbabilityOfSnow.hashCode),
                                                nightProbabilityOfSnow.hashCode),
                                            dayProbabilityOfHeavySnow.hashCode),
                                        nightProbabilityOfHeavySnow.hashCode),
                                    dayProbabilityOfRain.hashCode),
                                nightProbabilityOfRain.hashCode),
                            dayProbabilityOfHeavyRain.hashCode),
                        nightProbabilityOfHeavyRain.hashCode),
                    dayProbabilityOfHail.hashCode),
                nightProbabilityOfHail.hashCode),
            dayProbabilityOfSferics.hashCode),
        nightProbabilityOfSferics.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DailyTimeSeries')
          ..add('time', time)
          ..add('midday10MWindSpeed', midday10MWindSpeed)
          ..add('midnight10MWindSpeed', midnight10MWindSpeed)
          ..add('midday10MWindDirection', midday10MWindDirection)
          ..add('midnight10MWindDirection', midnight10MWindDirection)
          ..add('midday10MWindGust', midday10MWindGust)
          ..add('midnight10MWindGust', midnight10MWindGust)
          ..add('middayVisibility', middayVisibility)
          ..add('midnightVisibility', midnightVisibility)
          ..add('middayRelativeHumidity', middayRelativeHumidity)
          ..add('midnightRelativeHumidity', midnightRelativeHumidity)
          ..add('middayMslp', middayMslp)
          ..add('midnightMslp', midnightMslp)
          ..add('maxUvIndex', maxUvIndex)
          ..add('daySignificantWeatherCode', daySignificantWeatherCode)
          ..add('nightSignificantWeatherCode', nightSignificantWeatherCode)
          ..add('dayMaxScreenTemperature', dayMaxScreenTemperature)
          ..add('nightMinScreenTemperature', nightMinScreenTemperature)
          ..add('dayMaxFeelsLikeTemp', dayMaxFeelsLikeTemp)
          ..add('nightMinFeelsLikeTemp', nightMinFeelsLikeTemp)
          ..add('dayProbabilityOfPrecipitation', dayProbabilityOfPrecipitation)
          ..add('nightProbabilityOfPrecipitation',
              nightProbabilityOfPrecipitation)
          ..add('dayProbabilityOfSnow', dayProbabilityOfSnow)
          ..add('nightProbabilityOfSnow', nightProbabilityOfSnow)
          ..add('dayProbabilityOfHeavySnow', dayProbabilityOfHeavySnow)
          ..add('nightProbabilityOfHeavySnow', nightProbabilityOfHeavySnow)
          ..add('dayProbabilityOfRain', dayProbabilityOfRain)
          ..add('nightProbabilityOfRain', nightProbabilityOfRain)
          ..add('dayProbabilityOfHeavyRain', dayProbabilityOfHeavyRain)
          ..add('nightProbabilityOfHeavyRain', nightProbabilityOfHeavyRain)
          ..add('dayProbabilityOfHail', dayProbabilityOfHail)
          ..add('nightProbabilityOfHail', nightProbabilityOfHail)
          ..add('dayProbabilityOfSferics', dayProbabilityOfSferics)
          ..add('nightProbabilityOfSferics', nightProbabilityOfSferics))
        .toString();
  }
}

class DailyTimeSeriesBuilder
    implements Builder<DailyTimeSeries, DailyTimeSeriesBuilder> {
  _$DailyTimeSeries _$v;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  double _midday10MWindSpeed;
  double get midday10MWindSpeed => _$this._midday10MWindSpeed;
  set midday10MWindSpeed(double midday10MWindSpeed) =>
      _$this._midday10MWindSpeed = midday10MWindSpeed;

  double _midnight10MWindSpeed;
  double get midnight10MWindSpeed => _$this._midnight10MWindSpeed;
  set midnight10MWindSpeed(double midnight10MWindSpeed) =>
      _$this._midnight10MWindSpeed = midnight10MWindSpeed;

  double _midday10MWindDirection;
  double get midday10MWindDirection => _$this._midday10MWindDirection;
  set midday10MWindDirection(double midday10MWindDirection) =>
      _$this._midday10MWindDirection = midday10MWindDirection;

  double _midnight10MWindDirection;
  double get midnight10MWindDirection => _$this._midnight10MWindDirection;
  set midnight10MWindDirection(double midnight10MWindDirection) =>
      _$this._midnight10MWindDirection = midnight10MWindDirection;

  double _midday10MWindGust;
  double get midday10MWindGust => _$this._midday10MWindGust;
  set midday10MWindGust(double midday10MWindGust) =>
      _$this._midday10MWindGust = midday10MWindGust;

  double _midnight10MWindGust;
  double get midnight10MWindGust => _$this._midnight10MWindGust;
  set midnight10MWindGust(double midnight10MWindGust) =>
      _$this._midnight10MWindGust = midnight10MWindGust;

  double _middayVisibility;
  double get middayVisibility => _$this._middayVisibility;
  set middayVisibility(double middayVisibility) =>
      _$this._middayVisibility = middayVisibility;

  double _midnightVisibility;
  double get midnightVisibility => _$this._midnightVisibility;
  set midnightVisibility(double midnightVisibility) =>
      _$this._midnightVisibility = midnightVisibility;

  double _middayRelativeHumidity;
  double get middayRelativeHumidity => _$this._middayRelativeHumidity;
  set middayRelativeHumidity(double middayRelativeHumidity) =>
      _$this._middayRelativeHumidity = middayRelativeHumidity;

  double _midnightRelativeHumidity;
  double get midnightRelativeHumidity => _$this._midnightRelativeHumidity;
  set midnightRelativeHumidity(double midnightRelativeHumidity) =>
      _$this._midnightRelativeHumidity = midnightRelativeHumidity;

  int _middayMslp;
  int get middayMslp => _$this._middayMslp;
  set middayMslp(int middayMslp) => _$this._middayMslp = middayMslp;

  int _midnightMslp;
  int get midnightMslp => _$this._midnightMslp;
  set midnightMslp(int midnightMslp) => _$this._midnightMslp = midnightMslp;

  int _maxUvIndex;
  int get maxUvIndex => _$this._maxUvIndex;
  set maxUvIndex(int maxUvIndex) => _$this._maxUvIndex = maxUvIndex;

  int _daySignificantWeatherCode;
  int get daySignificantWeatherCode => _$this._daySignificantWeatherCode;
  set daySignificantWeatherCode(int daySignificantWeatherCode) =>
      _$this._daySignificantWeatherCode = daySignificantWeatherCode;

  int _nightSignificantWeatherCode;
  int get nightSignificantWeatherCode => _$this._nightSignificantWeatherCode;
  set nightSignificantWeatherCode(int nightSignificantWeatherCode) =>
      _$this._nightSignificantWeatherCode = nightSignificantWeatherCode;

  double _dayMaxScreenTemperature;
  double get dayMaxScreenTemperature => _$this._dayMaxScreenTemperature;
  set dayMaxScreenTemperature(double dayMaxScreenTemperature) =>
      _$this._dayMaxScreenTemperature = dayMaxScreenTemperature;

  double _nightMinScreenTemperature;
  double get nightMinScreenTemperature => _$this._nightMinScreenTemperature;
  set nightMinScreenTemperature(double nightMinScreenTemperature) =>
      _$this._nightMinScreenTemperature = nightMinScreenTemperature;

  double _dayMaxFeelsLikeTemp;
  double get dayMaxFeelsLikeTemp => _$this._dayMaxFeelsLikeTemp;
  set dayMaxFeelsLikeTemp(double dayMaxFeelsLikeTemp) =>
      _$this._dayMaxFeelsLikeTemp = dayMaxFeelsLikeTemp;

  double _nightMinFeelsLikeTemp;
  double get nightMinFeelsLikeTemp => _$this._nightMinFeelsLikeTemp;
  set nightMinFeelsLikeTemp(double nightMinFeelsLikeTemp) =>
      _$this._nightMinFeelsLikeTemp = nightMinFeelsLikeTemp;

  double _dayProbabilityOfPrecipitation;
  double get dayProbabilityOfPrecipitation =>
      _$this._dayProbabilityOfPrecipitation;
  set dayProbabilityOfPrecipitation(double dayProbabilityOfPrecipitation) =>
      _$this._dayProbabilityOfPrecipitation = dayProbabilityOfPrecipitation;

  double _nightProbabilityOfPrecipitation;
  double get nightProbabilityOfPrecipitation =>
      _$this._nightProbabilityOfPrecipitation;
  set nightProbabilityOfPrecipitation(double nightProbabilityOfPrecipitation) =>
      _$this._nightProbabilityOfPrecipitation = nightProbabilityOfPrecipitation;

  double _dayProbabilityOfSnow;
  double get dayProbabilityOfSnow => _$this._dayProbabilityOfSnow;
  set dayProbabilityOfSnow(double dayProbabilityOfSnow) =>
      _$this._dayProbabilityOfSnow = dayProbabilityOfSnow;

  double _nightProbabilityOfSnow;
  double get nightProbabilityOfSnow => _$this._nightProbabilityOfSnow;
  set nightProbabilityOfSnow(double nightProbabilityOfSnow) =>
      _$this._nightProbabilityOfSnow = nightProbabilityOfSnow;

  double _dayProbabilityOfHeavySnow;
  double get dayProbabilityOfHeavySnow => _$this._dayProbabilityOfHeavySnow;
  set dayProbabilityOfHeavySnow(double dayProbabilityOfHeavySnow) =>
      _$this._dayProbabilityOfHeavySnow = dayProbabilityOfHeavySnow;

  double _nightProbabilityOfHeavySnow;
  double get nightProbabilityOfHeavySnow => _$this._nightProbabilityOfHeavySnow;
  set nightProbabilityOfHeavySnow(double nightProbabilityOfHeavySnow) =>
      _$this._nightProbabilityOfHeavySnow = nightProbabilityOfHeavySnow;

  double _dayProbabilityOfRain;
  double get dayProbabilityOfRain => _$this._dayProbabilityOfRain;
  set dayProbabilityOfRain(double dayProbabilityOfRain) =>
      _$this._dayProbabilityOfRain = dayProbabilityOfRain;

  double _nightProbabilityOfRain;
  double get nightProbabilityOfRain => _$this._nightProbabilityOfRain;
  set nightProbabilityOfRain(double nightProbabilityOfRain) =>
      _$this._nightProbabilityOfRain = nightProbabilityOfRain;

  double _dayProbabilityOfHeavyRain;
  double get dayProbabilityOfHeavyRain => _$this._dayProbabilityOfHeavyRain;
  set dayProbabilityOfHeavyRain(double dayProbabilityOfHeavyRain) =>
      _$this._dayProbabilityOfHeavyRain = dayProbabilityOfHeavyRain;

  double _nightProbabilityOfHeavyRain;
  double get nightProbabilityOfHeavyRain => _$this._nightProbabilityOfHeavyRain;
  set nightProbabilityOfHeavyRain(double nightProbabilityOfHeavyRain) =>
      _$this._nightProbabilityOfHeavyRain = nightProbabilityOfHeavyRain;

  double _dayProbabilityOfHail;
  double get dayProbabilityOfHail => _$this._dayProbabilityOfHail;
  set dayProbabilityOfHail(double dayProbabilityOfHail) =>
      _$this._dayProbabilityOfHail = dayProbabilityOfHail;

  double _nightProbabilityOfHail;
  double get nightProbabilityOfHail => _$this._nightProbabilityOfHail;
  set nightProbabilityOfHail(double nightProbabilityOfHail) =>
      _$this._nightProbabilityOfHail = nightProbabilityOfHail;

  double _dayProbabilityOfSferics;
  double get dayProbabilityOfSferics => _$this._dayProbabilityOfSferics;
  set dayProbabilityOfSferics(double dayProbabilityOfSferics) =>
      _$this._dayProbabilityOfSferics = dayProbabilityOfSferics;

  double _nightProbabilityOfSferics;
  double get nightProbabilityOfSferics => _$this._nightProbabilityOfSferics;
  set nightProbabilityOfSferics(double nightProbabilityOfSferics) =>
      _$this._nightProbabilityOfSferics = nightProbabilityOfSferics;

  DailyTimeSeriesBuilder();

  DailyTimeSeriesBuilder get _$this {
    if (_$v != null) {
      _time = _$v.time;
      _midday10MWindSpeed = _$v.midday10MWindSpeed;
      _midnight10MWindSpeed = _$v.midnight10MWindSpeed;
      _midday10MWindDirection = _$v.midday10MWindDirection;
      _midnight10MWindDirection = _$v.midnight10MWindDirection;
      _midday10MWindGust = _$v.midday10MWindGust;
      _midnight10MWindGust = _$v.midnight10MWindGust;
      _middayVisibility = _$v.middayVisibility;
      _midnightVisibility = _$v.midnightVisibility;
      _middayRelativeHumidity = _$v.middayRelativeHumidity;
      _midnightRelativeHumidity = _$v.midnightRelativeHumidity;
      _middayMslp = _$v.middayMslp;
      _midnightMslp = _$v.midnightMslp;
      _maxUvIndex = _$v.maxUvIndex;
      _daySignificantWeatherCode = _$v.daySignificantWeatherCode;
      _nightSignificantWeatherCode = _$v.nightSignificantWeatherCode;
      _dayMaxScreenTemperature = _$v.dayMaxScreenTemperature;
      _nightMinScreenTemperature = _$v.nightMinScreenTemperature;
      _dayMaxFeelsLikeTemp = _$v.dayMaxFeelsLikeTemp;
      _nightMinFeelsLikeTemp = _$v.nightMinFeelsLikeTemp;
      _dayProbabilityOfPrecipitation = _$v.dayProbabilityOfPrecipitation;
      _nightProbabilityOfPrecipitation = _$v.nightProbabilityOfPrecipitation;
      _dayProbabilityOfSnow = _$v.dayProbabilityOfSnow;
      _nightProbabilityOfSnow = _$v.nightProbabilityOfSnow;
      _dayProbabilityOfHeavySnow = _$v.dayProbabilityOfHeavySnow;
      _nightProbabilityOfHeavySnow = _$v.nightProbabilityOfHeavySnow;
      _dayProbabilityOfRain = _$v.dayProbabilityOfRain;
      _nightProbabilityOfRain = _$v.nightProbabilityOfRain;
      _dayProbabilityOfHeavyRain = _$v.dayProbabilityOfHeavyRain;
      _nightProbabilityOfHeavyRain = _$v.nightProbabilityOfHeavyRain;
      _dayProbabilityOfHail = _$v.dayProbabilityOfHail;
      _nightProbabilityOfHail = _$v.nightProbabilityOfHail;
      _dayProbabilityOfSferics = _$v.dayProbabilityOfSferics;
      _nightProbabilityOfSferics = _$v.nightProbabilityOfSferics;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyTimeSeries other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DailyTimeSeries;
  }

  @override
  void update(void Function(DailyTimeSeriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DailyTimeSeries build() {
    final _$result = _$v ??
        new _$DailyTimeSeries._(
            time: time,
            midday10MWindSpeed: midday10MWindSpeed,
            midnight10MWindSpeed: midnight10MWindSpeed,
            midday10MWindDirection: midday10MWindDirection,
            midnight10MWindDirection: midnight10MWindDirection,
            midday10MWindGust: midday10MWindGust,
            midnight10MWindGust: midnight10MWindGust,
            middayVisibility: middayVisibility,
            midnightVisibility: midnightVisibility,
            middayRelativeHumidity: middayRelativeHumidity,
            midnightRelativeHumidity: midnightRelativeHumidity,
            middayMslp: middayMslp,
            midnightMslp: midnightMslp,
            maxUvIndex: maxUvIndex,
            daySignificantWeatherCode: daySignificantWeatherCode,
            nightSignificantWeatherCode: nightSignificantWeatherCode,
            dayMaxScreenTemperature: dayMaxScreenTemperature,
            nightMinScreenTemperature: nightMinScreenTemperature,
            dayMaxFeelsLikeTemp: dayMaxFeelsLikeTemp,
            nightMinFeelsLikeTemp: nightMinFeelsLikeTemp,
            dayProbabilityOfPrecipitation: dayProbabilityOfPrecipitation,
            nightProbabilityOfPrecipitation: nightProbabilityOfPrecipitation,
            dayProbabilityOfSnow: dayProbabilityOfSnow,
            nightProbabilityOfSnow: nightProbabilityOfSnow,
            dayProbabilityOfHeavySnow: dayProbabilityOfHeavySnow,
            nightProbabilityOfHeavySnow: nightProbabilityOfHeavySnow,
            dayProbabilityOfRain: dayProbabilityOfRain,
            nightProbabilityOfRain: nightProbabilityOfRain,
            dayProbabilityOfHeavyRain: dayProbabilityOfHeavyRain,
            nightProbabilityOfHeavyRain: nightProbabilityOfHeavyRain,
            dayProbabilityOfHail: dayProbabilityOfHail,
            nightProbabilityOfHail: nightProbabilityOfHail,
            dayProbabilityOfSferics: dayProbabilityOfSferics,
            nightProbabilityOfSferics: nightProbabilityOfSferics);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
