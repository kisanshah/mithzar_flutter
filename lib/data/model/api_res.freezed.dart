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
  $Res call({bool? success, List<ApiErrorMessage>? errors, dynamic data});
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
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$_ApiResCopyWith<$Res> implements $ApiResCopyWith<$Res> {
  factory _$$_ApiResCopyWith(_$_ApiRes value, $Res Function(_$_ApiRes) then) =
      __$$_ApiResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, List<ApiErrorMessage>? errors, dynamic data});
}

/// @nodoc
class __$$_ApiResCopyWithImpl<$Res>
    extends _$ApiResCopyWithImpl<$Res, _$_ApiRes>
    implements _$$_ApiResCopyWith<$Res> {
  __$$_ApiResCopyWithImpl(_$_ApiRes _value, $Res Function(_$_ApiRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ApiRes(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$_ApiRes implements _ApiRes {
  _$_ApiRes({this.success, final List<ApiErrorMessage>? errors, this.data})
      : _errors = errors;

  factory _$_ApiRes.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResFromJson(json);

  @override
  final bool? success;
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
    return 'ApiRes(success: $success, errors: $errors, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiRes &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResCopyWith<_$_ApiRes> get copyWith =>
      __$$_ApiResCopyWithImpl<_$_ApiRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResToJson(
      this,
    );
  }
}

abstract class _ApiRes implements ApiRes {
  factory _ApiRes(
      {final bool? success,
      final List<ApiErrorMessage>? errors,
      final dynamic data}) = _$_ApiRes;

  factory _ApiRes.fromJson(Map<String, dynamic> json) = _$_ApiRes.fromJson;

  @override
  bool? get success;
  @override
  List<ApiErrorMessage>? get errors;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResCopyWith<_$_ApiRes> get copyWith =>
      throw _privateConstructorUsedError;
}
