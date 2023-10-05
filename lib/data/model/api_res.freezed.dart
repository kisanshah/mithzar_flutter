// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiRes _$ApiResFromJson(Map<String, dynamic> json) {
  return _ApiRes.fromJson(json);
}

/// @nodoc
mixin _$ApiRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ApiErrorMessage>? get errors => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResCopyWith<ApiRes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResCopyWith<$Res> {
  factory $ApiResCopyWith(ApiRes value, $Res Function(ApiRes) then) =
      _$ApiResCopyWithImpl<$Res, ApiRes>;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      List<ApiErrorMessage>? errors,
      dynamic data});
}

/// @nodoc
class _$ApiResCopyWithImpl<$Res, $Val extends ApiRes>
    implements $ApiResCopyWith<$Res> {
  _$ApiResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ApiErrorMessage>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResImplCopyWith<$Res> implements $ApiResCopyWith<$Res> {
  factory _$$ApiResImplCopyWith(
          _$ApiResImpl value, $Res Function(_$ApiResImpl) then) =
      __$$ApiResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      List<ApiErrorMessage>? errors,
      dynamic data});
}

/// @nodoc
class __$$ApiResImplCopyWithImpl<$Res>
    extends _$ApiResCopyWithImpl<$Res, _$ApiResImpl>
    implements _$$ApiResImplCopyWith<$Res> {
  __$$ApiResImplCopyWithImpl(
      _$ApiResImpl _value, $Res Function(_$ApiResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ApiResImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ApiErrorMessage>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiResImpl implements _ApiRes {
  _$ApiResImpl(
      {this.success,
      this.message,
      final List<ApiErrorMessage>? errors,
      this.data})
      : _errors = errors;

  factory _$ApiResImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  final List<ApiErrorMessage>? _errors;
  @override
  List<ApiErrorMessage>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic data;

  @override
  String toString() {
    return 'ApiRes(success: $success, message: $message, errors: $errors, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      message,
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResImplCopyWith<_$ApiResImpl> get copyWith =>
      __$$ApiResImplCopyWithImpl<_$ApiResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResImplToJson(
      this,
    );
  }
}

abstract class _ApiRes implements ApiRes {
  factory _ApiRes(
      {final bool? success,
      final String? message,
      final List<ApiErrorMessage>? errors,
      final dynamic data}) = _$ApiResImpl;

  factory _ApiRes.fromJson(Map<String, dynamic> json) = _$ApiResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  List<ApiErrorMessage>? get errors;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ApiResImplCopyWith<_$ApiResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
