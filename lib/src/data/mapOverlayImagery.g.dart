// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapOverlayImagery.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapOverlayImagery> _$mapOverlayImagerySerializer =
    new _$MapOverlayImagerySerializer();

class _$MapOverlayImagerySerializer
    implements StructuredSerializer<MapOverlayImagery> {
  @override
  final Iterable<Type> types = const [MapOverlayImagery, _$MapOverlayImagery];
  @override
  final String wireName = 'MapOverlayImagery';

  @override
  Iterable<Object> serialize(Serializers serializers, MapOverlayImagery object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'layerName',
      serializers.serialize(object.layerName,
          specifiedType: const FullType(String)),
      'imageFormat',
      serializers.serialize(object.imageFormat,
          specifiedType: const FullType(String)),
      'defaultTime',
      serializers.serialize(object.defaultTime,
          specifiedType: const FullType(DateTime)),
      'timeSteps',
      serializers.serialize(object.timeSteps,
          specifiedType: const FullType(List, const [const FullType(int)])),
    ];

    return result;
  }

  @override
  MapOverlayImagery deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapOverlayImageryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'layerName':
          result.layerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageFormat':
          result.imageFormat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'defaultTime':
          result.defaultTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'timeSteps':
          result.timeSteps = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(int)]))
              as List<int>;
          break;
      }
    }

    return result.build();
  }
}

class _$MapOverlayImagery extends MapOverlayImagery {
  @override
  final String layerName;
  @override
  final String imageFormat;
  @override
  final DateTime defaultTime;
  @override
  final List<int> timeSteps;

  factory _$MapOverlayImagery(
          [void Function(MapOverlayImageryBuilder) updates]) =>
      (new MapOverlayImageryBuilder()..update(updates)).build();

  _$MapOverlayImagery._(
      {this.layerName, this.imageFormat, this.defaultTime, this.timeSteps})
      : super._() {
    if (layerName == null) {
      throw new BuiltValueNullFieldError('MapOverlayImagery', 'layerName');
    }
    if (imageFormat == null) {
      throw new BuiltValueNullFieldError('MapOverlayImagery', 'imageFormat');
    }
    if (defaultTime == null) {
      throw new BuiltValueNullFieldError('MapOverlayImagery', 'defaultTime');
    }
    if (timeSteps == null) {
      throw new BuiltValueNullFieldError('MapOverlayImagery', 'timeSteps');
    }
  }

  @override
  MapOverlayImagery rebuild(void Function(MapOverlayImageryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapOverlayImageryBuilder toBuilder() =>
      new MapOverlayImageryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapOverlayImagery &&
        layerName == other.layerName &&
        imageFormat == other.imageFormat &&
        defaultTime == other.defaultTime &&
        timeSteps == other.timeSteps;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, layerName.hashCode), imageFormat.hashCode),
            defaultTime.hashCode),
        timeSteps.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MapOverlayImagery')
          ..add('layerName', layerName)
          ..add('imageFormat', imageFormat)
          ..add('defaultTime', defaultTime)
          ..add('timeSteps', timeSteps))
        .toString();
  }
}

class MapOverlayImageryBuilder
    implements Builder<MapOverlayImagery, MapOverlayImageryBuilder> {
  _$MapOverlayImagery _$v;

  String _layerName;
  String get layerName => _$this._layerName;
  set layerName(String layerName) => _$this._layerName = layerName;

  String _imageFormat;
  String get imageFormat => _$this._imageFormat;
  set imageFormat(String imageFormat) => _$this._imageFormat = imageFormat;

  DateTime _defaultTime;
  DateTime get defaultTime => _$this._defaultTime;
  set defaultTime(DateTime defaultTime) => _$this._defaultTime = defaultTime;

  List<int> _timeSteps;
  List<int> get timeSteps => _$this._timeSteps;
  set timeSteps(List<int> timeSteps) => _$this._timeSteps = timeSteps;

  MapOverlayImageryBuilder();

  MapOverlayImageryBuilder get _$this {
    if (_$v != null) {
      _layerName = _$v.layerName;
      _imageFormat = _$v.imageFormat;
      _defaultTime = _$v.defaultTime;
      _timeSteps = _$v.timeSteps;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapOverlayImagery other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MapOverlayImagery;
  }

  @override
  void update(void Function(MapOverlayImageryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MapOverlayImagery build() {
    final _$result = _$v ??
        new _$MapOverlayImagery._(
            layerName: layerName,
            imageFormat: imageFormat,
            defaultTime: defaultTime,
            timeSteps: timeSteps);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
