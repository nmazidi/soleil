// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeSeries.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TimeSeries> _$timeSeriesSerializer = new _$TimeSeriesSerializer();

class _$TimeSeriesSerializer implements StructuredSerializer<TimeSeries> {
  @override
  final Iterable<Type> types = const [TimeSeries, _$TimeSeries];
  @override
  final String wireName = 'TimeSeries';

  @override
  Iterable<Object> serialize(Serializers serializers, TimeSeries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'screenTemperature',
      serializers.serialize(object.screenTemperature,
          specifiedType: const FullType(double)),
      'maxScreenAirTemp',
      serializers.serialize(object.maxScreenAirTemp,
          specifiedType: const FullType(double)),
      'minScreenAirTemp',
      serializers.serialize(object.minScreenAirTemp,
          specifiedType: const FullType(double)),
      'screenDewPointTemperature',
      serializers.serialize(object.screenDewPointTemperature,
          specifiedType: const FullType(double)),
      'feelsLikeTemperature',
      serializers.serialize(object.feelsLikeTemperature,
          specifiedType: const FullType(double)),
      'windSpeed10m',
      serializers.serialize(object.windSpeed10m,
          specifiedType: const FullType(double)),
      'windDirectionFrom10m',
      serializers.serialize(object.windDirectionFrom10m,
          specifiedType: const FullType(double)),
      'windGustSpeed10m',
      serializers.serialize(object.windGustSpeed10m,
          specifiedType: const FullType(double)),
      'max10mWindGust',
      serializers.serialize(object.max10mWindGust,
          specifiedType: const FullType(double)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(double)),
      'screenRelativeHumidity',
      serializers.serialize(object.screenRelativeHumidity,
          specifiedType: const FullType(double)),
      'mslp',
      serializers.serialize(object.mslp, specifiedType: const FullType(int)),
      'uvIndex',
      serializers.serialize(object.uvIndex, specifiedType: const FullType(int)),
      'significantWeatherCode',
      serializers.serialize(object.significantWeatherCode,
          specifiedType: const FullType(int)),
      'precipitationRate',
      serializers.serialize(object.precipitationRate,
          specifiedType: const FullType(double)),
      'totalPrecipAmount',
      serializers.serialize(object.totalPrecipAmount,
          specifiedType: const FullType(double)),
      'totalSnowAmount',
      serializers.serialize(object.totalSnowAmount,
          specifiedType: const FullType(double)),
      'probOfPrecipitation',
      serializers.serialize(object.probOfPrecipitation,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  TimeSeries deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimeSeriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TimeSeries extends TimeSeries {
  @override
  final String time;
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
  final int probOfPrecipitation;

  factory _$TimeSeries([void Function(TimeSeriesBuilder) updates]) =>
      (new TimeSeriesBuilder()..update(updates)).build();

  _$TimeSeries._(
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
      throw new BuiltValueNullFieldError('TimeSeries', 'time');
    }
    if (screenTemperature == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'screenTemperature');
    }
    if (maxScreenAirTemp == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'maxScreenAirTemp');
    }
    if (minScreenAirTemp == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'minScreenAirTemp');
    }
    if (screenDewPointTemperature == null) {
      throw new BuiltValueNullFieldError(
          'TimeSeries', 'screenDewPointTemperature');
    }
    if (feelsLikeTemperature == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'feelsLikeTemperature');
    }
    if (windSpeed10m == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'windSpeed10m');
    }
    if (windDirectionFrom10m == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'windDirectionFrom10m');
    }
    if (windGustSpeed10m == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'windGustSpeed10m');
    }
    if (max10mWindGust == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'max10mWindGust');
    }
    if (visibility == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'visibility');
    }
    if (screenRelativeHumidity == null) {
      throw new BuiltValueNullFieldError(
          'TimeSeries', 'screenRelativeHumidity');
    }
    if (mslp == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'mslp');
    }
    if (uvIndex == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'uvIndex');
    }
    if (significantWeatherCode == null) {
      throw new BuiltValueNullFieldError(
          'TimeSeries', 'significantWeatherCode');
    }
    if (precipitationRate == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'precipitationRate');
    }
    if (totalPrecipAmount == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'totalPrecipAmount');
    }
    if (totalSnowAmount == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'totalSnowAmount');
    }
    if (probOfPrecipitation == null) {
      throw new BuiltValueNullFieldError('TimeSeries', 'probOfPrecipitation');
    }
  }

  @override
  TimeSeries rebuild(void Function(TimeSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSeriesBuilder toBuilder() => new TimeSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeries &&
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
    return (newBuiltValueToStringHelper('TimeSeries')
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

class TimeSeriesBuilder implements Builder<TimeSeries, TimeSeriesBuilder> {
  _$TimeSeries _$v;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

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

  int _probOfPrecipitation;
  int get probOfPrecipitation => _$this._probOfPrecipitation;
  set probOfPrecipitation(int probOfPrecipitation) =>
      _$this._probOfPrecipitation = probOfPrecipitation;

  TimeSeriesBuilder();

  TimeSeriesBuilder get _$this {
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
  void replace(TimeSeries other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TimeSeries;
  }

  @override
  void update(void Function(TimeSeriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimeSeries build() {
    final _$result = _$v ??
        new _$TimeSeries._(
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
