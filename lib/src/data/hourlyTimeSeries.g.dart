// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourlyTimeSeries.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HourlyTimeSeries> _$hourlyTimeSeriesSerializer =
    new _$HourlyTimeSeriesSerializer();

class _$HourlyTimeSeriesSerializer
    implements StructuredSerializer<HourlyTimeSeries> {
  @override
  final Iterable<Type> types = const [HourlyTimeSeries, _$HourlyTimeSeries];
  @override
  final String wireName = 'HourlyTimeSeries';

  @override
  Iterable<Object> serialize(Serializers serializers, HourlyTimeSeries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'time',
      serializers.serialize(object.time,
          specifiedType: const FullType(DateTime)),
      'screenTemperature',
      serializers.serialize(object.screenTemperature,
          specifiedType: const FullType(double)),
    ];
    if (object.maxScreenAirTemp != null) {
      result
        ..add('maxScreenAirTemp')
        ..add(serializers.serialize(object.maxScreenAirTemp,
            specifiedType: const FullType(double)));
    }
    if (object.minScreenAirTemp != null) {
      result
        ..add('minScreenAirTemp')
        ..add(serializers.serialize(object.minScreenAirTemp,
            specifiedType: const FullType(double)));
    }
    if (object.screenDewPointTemperature != null) {
      result
        ..add('screenDewPointTemperature')
        ..add(serializers.serialize(object.screenDewPointTemperature,
            specifiedType: const FullType(double)));
    }
    if (object.feelsLikeTemperature != null) {
      result
        ..add('feelsLikeTemperature')
        ..add(serializers.serialize(object.feelsLikeTemperature,
            specifiedType: const FullType(double)));
    }
    if (object.windSpeed10m != null) {
      result
        ..add('windSpeed10m')
        ..add(serializers.serialize(object.windSpeed10m,
            specifiedType: const FullType(double)));
    }
    if (object.windDirectionFrom10m != null) {
      result
        ..add('windDirectionFrom10m')
        ..add(serializers.serialize(object.windDirectionFrom10m,
            specifiedType: const FullType(double)));
    }
    if (object.windGustSpeed10m != null) {
      result
        ..add('windGustSpeed10m')
        ..add(serializers.serialize(object.windGustSpeed10m,
            specifiedType: const FullType(double)));
    }
    if (object.max10mWindGust != null) {
      result
        ..add('max10mWindGust')
        ..add(serializers.serialize(object.max10mWindGust,
            specifiedType: const FullType(double)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(double)));
    }
    if (object.screenRelativeHumidity != null) {
      result
        ..add('screenRelativeHumidity')
        ..add(serializers.serialize(object.screenRelativeHumidity,
            specifiedType: const FullType(double)));
    }
    if (object.mslp != null) {
      result
        ..add('mslp')
        ..add(serializers.serialize(object.mslp,
            specifiedType: const FullType(int)));
    }
    if (object.uvIndex != null) {
      result
        ..add('uvIndex')
        ..add(serializers.serialize(object.uvIndex,
            specifiedType: const FullType(int)));
    }
    if (object.significantWeatherCode != null) {
      result
        ..add('significantWeatherCode')
        ..add(serializers.serialize(object.significantWeatherCode,
            specifiedType: const FullType(int)));
    }
    if (object.precipitationRate != null) {
      result
        ..add('precipitationRate')
        ..add(serializers.serialize(object.precipitationRate,
            specifiedType: const FullType(double)));
    }
    if (object.totalPrecipAmount != null) {
      result
        ..add('totalPrecipAmount')
        ..add(serializers.serialize(object.totalPrecipAmount,
            specifiedType: const FullType(double)));
    }
    if (object.totalSnowAmount != null) {
      result
        ..add('totalSnowAmount')
        ..add(serializers.serialize(object.totalSnowAmount,
            specifiedType: const FullType(double)));
    }
    if (object.probOfPrecipitation != null) {
      result
        ..add('probOfPrecipitation')
        ..add(serializers.serialize(object.probOfPrecipitation,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  HourlyTimeSeries deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HourlyTimeSeriesBuilder();

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
        case 'screenTemperature':
          result.screenTemperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxScreenAirTemp':
          result.maxScreenAirTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'minScreenAirTemp':
          result.minScreenAirTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'screenDewPointTemperature':
          result.screenDewPointTemperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'feelsLikeTemperature':
          result.feelsLikeTemperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windSpeed10m':
          result.windSpeed10m = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windDirectionFrom10m':
          result.windDirectionFrom10m = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windGustSpeed10m':
          result.windGustSpeed10m = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'max10mWindGust':
          result.max10mWindGust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'screenRelativeHumidity':
          result.screenRelativeHumidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'mslp':
          result.mslp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uvIndex':
          result.uvIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'significantWeatherCode':
          result.significantWeatherCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'precipitationRate':
          result.precipitationRate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalPrecipAmount':
          result.totalPrecipAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalSnowAmount':
          result.totalSnowAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'probOfPrecipitation':
          result.probOfPrecipitation = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$HourlyTimeSeries extends HourlyTimeSeries {
  @override
  final DateTime time;
  @override
  final double screenTemperature;
  @override
  final double maxScreenAirTemp;
  @override
  final double minScreenAirTemp;
  @override
  final double screenDewPointTemperature;
  @override
  final double feelsLikeTemperature;
  @override
  final double windSpeed10m;
  @override
  final double windDirectionFrom10m;
  @override
  final double windGustSpeed10m;
  @override
  final double max10mWindGust;
  @override
  final double visibility;
  @override
  final double screenRelativeHumidity;
  @override
  final int mslp;
  @override
  final int uvIndex;
  @override
  final int significantWeatherCode;
  @override
  final double precipitationRate;
  @override
  final double totalPrecipAmount;
  @override
  final double totalSnowAmount;
  @override
  final double probOfPrecipitation;

  factory _$HourlyTimeSeries(
          [void Function(HourlyTimeSeriesBuilder) updates]) =>
      (new HourlyTimeSeriesBuilder()..update(updates)).build();

  _$HourlyTimeSeries._(
      {this.time,
      this.screenTemperature,
      this.maxScreenAirTemp,
      this.minScreenAirTemp,
      this.screenDewPointTemperature,
      this.feelsLikeTemperature,
      this.windSpeed10m,
      this.windDirectionFrom10m,
      this.windGustSpeed10m,
      this.max10mWindGust,
      this.visibility,
      this.screenRelativeHumidity,
      this.mslp,
      this.uvIndex,
      this.significantWeatherCode,
      this.precipitationRate,
      this.totalPrecipAmount,
      this.totalSnowAmount,
      this.probOfPrecipitation})
      : super._() {
    if (time == null) {
      throw new BuiltValueNullFieldError('HourlyTimeSeries', 'time');
    }
    if (screenTemperature == null) {
      throw new BuiltValueNullFieldError(
          'HourlyTimeSeries', 'screenTemperature');
    }
  }

  @override
  HourlyTimeSeries rebuild(void Function(HourlyTimeSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HourlyTimeSeriesBuilder toBuilder() =>
      new HourlyTimeSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HourlyTimeSeries &&
        time == other.time &&
        screenTemperature == other.screenTemperature &&
        maxScreenAirTemp == other.maxScreenAirTemp &&
        minScreenAirTemp == other.minScreenAirTemp &&
        screenDewPointTemperature == other.screenDewPointTemperature &&
        feelsLikeTemperature == other.feelsLikeTemperature &&
        windSpeed10m == other.windSpeed10m &&
        windDirectionFrom10m == other.windDirectionFrom10m &&
        windGustSpeed10m == other.windGustSpeed10m &&
        max10mWindGust == other.max10mWindGust &&
        visibility == other.visibility &&
        screenRelativeHumidity == other.screenRelativeHumidity &&
        mslp == other.mslp &&
        uvIndex == other.uvIndex &&
        significantWeatherCode == other.significantWeatherCode &&
        precipitationRate == other.precipitationRate &&
        totalPrecipAmount == other.totalPrecipAmount &&
        totalSnowAmount == other.totalSnowAmount &&
        probOfPrecipitation == other.probOfPrecipitation;
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
                                                                            $jc(
                                                                                0,
                                                                                time
                                                                                    .hashCode),
                                                                            screenTemperature
                                                                                .hashCode),
                                                                        maxScreenAirTemp
                                                                            .hashCode),
                                                                    minScreenAirTemp
                                                                        .hashCode),
                                                                screenDewPointTemperature
                                                                    .hashCode),
                                                            feelsLikeTemperature
                                                                .hashCode),
                                                        windSpeed10m.hashCode),
                                                    windDirectionFrom10m
                                                        .hashCode),
                                                windGustSpeed10m.hashCode),
                                            max10mWindGust.hashCode),
                                        visibility.hashCode),
                                    screenRelativeHumidity.hashCode),
                                mslp.hashCode),
                            uvIndex.hashCode),
                        significantWeatherCode.hashCode),
                    precipitationRate.hashCode),
                totalPrecipAmount.hashCode),
            totalSnowAmount.hashCode),
        probOfPrecipitation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HourlyTimeSeries')
          ..add('time', time)
          ..add('screenTemperature', screenTemperature)
          ..add('maxScreenAirTemp', maxScreenAirTemp)
          ..add('minScreenAirTemp', minScreenAirTemp)
          ..add('screenDewPointTemperature', screenDewPointTemperature)
          ..add('feelsLikeTemperature', feelsLikeTemperature)
          ..add('windSpeed10m', windSpeed10m)
          ..add('windDirectionFrom10m', windDirectionFrom10m)
          ..add('windGustSpeed10m', windGustSpeed10m)
          ..add('max10mWindGust', max10mWindGust)
          ..add('visibility', visibility)
          ..add('screenRelativeHumidity', screenRelativeHumidity)
          ..add('mslp', mslp)
          ..add('uvIndex', uvIndex)
          ..add('significantWeatherCode', significantWeatherCode)
          ..add('precipitationRate', precipitationRate)
          ..add('totalPrecipAmount', totalPrecipAmount)
          ..add('totalSnowAmount', totalSnowAmount)
          ..add('probOfPrecipitation', probOfPrecipitation))
        .toString();
  }
}

class HourlyTimeSeriesBuilder
    implements Builder<HourlyTimeSeries, HourlyTimeSeriesBuilder> {
  _$HourlyTimeSeries _$v;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  double _screenTemperature;
  double get screenTemperature => _$this._screenTemperature;
  set screenTemperature(double screenTemperature) =>
      _$this._screenTemperature = screenTemperature;

  double _maxScreenAirTemp;
  double get maxScreenAirTemp => _$this._maxScreenAirTemp;
  set maxScreenAirTemp(double maxScreenAirTemp) =>
      _$this._maxScreenAirTemp = maxScreenAirTemp;

  double _minScreenAirTemp;
  double get minScreenAirTemp => _$this._minScreenAirTemp;
  set minScreenAirTemp(double minScreenAirTemp) =>
      _$this._minScreenAirTemp = minScreenAirTemp;

  double _screenDewPointTemperature;
  double get screenDewPointTemperature => _$this._screenDewPointTemperature;
  set screenDewPointTemperature(double screenDewPointTemperature) =>
      _$this._screenDewPointTemperature = screenDewPointTemperature;

  double _feelsLikeTemperature;
  double get feelsLikeTemperature => _$this._feelsLikeTemperature;
  set feelsLikeTemperature(double feelsLikeTemperature) =>
      _$this._feelsLikeTemperature = feelsLikeTemperature;

  double _windSpeed10m;
  double get windSpeed10m => _$this._windSpeed10m;
  set windSpeed10m(double windSpeed10m) => _$this._windSpeed10m = windSpeed10m;

  double _windDirectionFrom10m;
  double get windDirectionFrom10m => _$this._windDirectionFrom10m;
  set windDirectionFrom10m(double windDirectionFrom10m) =>
      _$this._windDirectionFrom10m = windDirectionFrom10m;

  double _windGustSpeed10m;
  double get windGustSpeed10m => _$this._windGustSpeed10m;
  set windGustSpeed10m(double windGustSpeed10m) =>
      _$this._windGustSpeed10m = windGustSpeed10m;

  double _max10mWindGust;
  double get max10mWindGust => _$this._max10mWindGust;
  set max10mWindGust(double max10mWindGust) =>
      _$this._max10mWindGust = max10mWindGust;

  double _visibility;
  double get visibility => _$this._visibility;
  set visibility(double visibility) => _$this._visibility = visibility;

  double _screenRelativeHumidity;
  double get screenRelativeHumidity => _$this._screenRelativeHumidity;
  set screenRelativeHumidity(double screenRelativeHumidity) =>
      _$this._screenRelativeHumidity = screenRelativeHumidity;

  int _mslp;
  int get mslp => _$this._mslp;
  set mslp(int mslp) => _$this._mslp = mslp;

  int _uvIndex;
  int get uvIndex => _$this._uvIndex;
  set uvIndex(int uvIndex) => _$this._uvIndex = uvIndex;

  int _significantWeatherCode;
  int get significantWeatherCode => _$this._significantWeatherCode;
  set significantWeatherCode(int significantWeatherCode) =>
      _$this._significantWeatherCode = significantWeatherCode;

  double _precipitationRate;
  double get precipitationRate => _$this._precipitationRate;
  set precipitationRate(double precipitationRate) =>
      _$this._precipitationRate = precipitationRate;

  double _totalPrecipAmount;
  double get totalPrecipAmount => _$this._totalPrecipAmount;
  set totalPrecipAmount(double totalPrecipAmount) =>
      _$this._totalPrecipAmount = totalPrecipAmount;

  double _totalSnowAmount;
  double get totalSnowAmount => _$this._totalSnowAmount;
  set totalSnowAmount(double totalSnowAmount) =>
      _$this._totalSnowAmount = totalSnowAmount;

  double _probOfPrecipitation;
  double get probOfPrecipitation => _$this._probOfPrecipitation;
  set probOfPrecipitation(double probOfPrecipitation) =>
      _$this._probOfPrecipitation = probOfPrecipitation;

  HourlyTimeSeriesBuilder();

  HourlyTimeSeriesBuilder get _$this {
    if (_$v != null) {
      _time = _$v.time;
      _screenTemperature = _$v.screenTemperature;
      _maxScreenAirTemp = _$v.maxScreenAirTemp;
      _minScreenAirTemp = _$v.minScreenAirTemp;
      _screenDewPointTemperature = _$v.screenDewPointTemperature;
      _feelsLikeTemperature = _$v.feelsLikeTemperature;
      _windSpeed10m = _$v.windSpeed10m;
      _windDirectionFrom10m = _$v.windDirectionFrom10m;
      _windGustSpeed10m = _$v.windGustSpeed10m;
      _max10mWindGust = _$v.max10mWindGust;
      _visibility = _$v.visibility;
      _screenRelativeHumidity = _$v.screenRelativeHumidity;
      _mslp = _$v.mslp;
      _uvIndex = _$v.uvIndex;
      _significantWeatherCode = _$v.significantWeatherCode;
      _precipitationRate = _$v.precipitationRate;
      _totalPrecipAmount = _$v.totalPrecipAmount;
      _totalSnowAmount = _$v.totalSnowAmount;
      _probOfPrecipitation = _$v.probOfPrecipitation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HourlyTimeSeries other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HourlyTimeSeries;
  }

  @override
  void update(void Function(HourlyTimeSeriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HourlyTimeSeries build() {
    final _$result = _$v ??
        new _$HourlyTimeSeries._(
            time: time,
            screenTemperature: screenTemperature,
            maxScreenAirTemp: maxScreenAirTemp,
            minScreenAirTemp: minScreenAirTemp,
            screenDewPointTemperature: screenDewPointTemperature,
            feelsLikeTemperature: feelsLikeTemperature,
            windSpeed10m: windSpeed10m,
            windDirectionFrom10m: windDirectionFrom10m,
            windGustSpeed10m: windGustSpeed10m,
            max10mWindGust: max10mWindGust,
            visibility: visibility,
            screenRelativeHumidity: screenRelativeHumidity,
            mslp: mslp,
            uvIndex: uvIndex,
            significantWeatherCode: significantWeatherCode,
            precipitationRate: precipitationRate,
            totalPrecipAmount: totalPrecipAmount,
            totalSnowAmount: totalSnowAmount,
            probOfPrecipitation: probOfPrecipitation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
