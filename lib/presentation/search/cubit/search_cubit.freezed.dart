// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchBuidable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  WeatherModel? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchBuidableCopyWith<SearchBuidable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBuidableCopyWith<$Res> {
  factory $SearchBuidableCopyWith(
          SearchBuidable value, $Res Function(SearchBuidable) then) =
      _$SearchBuidableCopyWithImpl<$Res, SearchBuidable>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      WeatherModel? data});

  $WeatherModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchBuidableCopyWithImpl<$Res, $Val extends SearchBuidable>
    implements $SearchBuidableCopyWith<$Res> {
  _$SearchBuidableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WeatherModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchBuidableImplCopyWith<$Res>
    implements $SearchBuidableCopyWith<$Res> {
  factory _$$SearchBuidableImplCopyWith(_$SearchBuidableImpl value,
          $Res Function(_$SearchBuidableImpl) then) =
      __$$SearchBuidableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      WeatherModel? data});

  @override
  $WeatherModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SearchBuidableImplCopyWithImpl<$Res>
    extends _$SearchBuidableCopyWithImpl<$Res, _$SearchBuidableImpl>
    implements _$$SearchBuidableImplCopyWith<$Res> {
  __$$SearchBuidableImplCopyWithImpl(
      _$SearchBuidableImpl _value, $Res Function(_$SearchBuidableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchBuidableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
    ));
  }
}

/// @nodoc

class _$SearchBuidableImpl implements _SearchBuidable {
  const _$SearchBuidableImpl(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.error,
      this.data});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failed;
  @override
  final dynamic error;
  @override
  final WeatherModel? data;

  @override
  String toString() {
    return 'SearchBuidable(loading: $loading, success: $success, failed: $failed, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBuidableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed,
      const DeepCollectionEquality().hash(error), data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBuidableImplCopyWith<_$SearchBuidableImpl> get copyWith =>
      __$$SearchBuidableImplCopyWithImpl<_$SearchBuidableImpl>(
          this, _$identity);
}

abstract class _SearchBuidable implements SearchBuidable {
  const factory _SearchBuidable(
      {final bool loading,
      final bool success,
      final bool failed,
      final dynamic error,
      final WeatherModel? data}) = _$SearchBuidableImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;
  @override
  WeatherModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchBuidableImplCopyWith<_$SearchBuidableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
