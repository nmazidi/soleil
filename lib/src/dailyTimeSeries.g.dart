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
    return <Object>[];
  }

  @override
  DailyTimeSeries deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new DailyTimeSeriesBuilder().build();
  }
}

class _$DailyTimeSeries extends DailyTimeSeries {
  factory _$DailyTimeSeries([void Function(DailyTimeSeriesBuilder) updates]) =>
      (new DailyTimeSeriesBuilder()..update(updates)).build();

  _$DailyTimeSeries._() : super._();

  @override
  DailyTimeSeries rebuild(void Function(DailyTimeSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyTimeSeriesBuilder toBuilder() =>
      new DailyTimeSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyTimeSeries;
  }

  @override
  int get hashCode {
    return 300012763;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DailyTimeSeries').toString();
  }
}

class DailyTimeSeriesBuilder
    implements Builder<DailyTimeSeries, DailyTimeSeriesBuilder> {
  _$DailyTimeSeries _$v;

  DailyTimeSeriesBuilder();

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
    final _$result = _$v ?? new _$DailyTimeSeries._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
