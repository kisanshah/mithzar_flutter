// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenRes _$TokenResFromJson(Map<String, dynamic> json) {
  return _TokenRes.fromJson(json);
}

/// @nodoc
mixin _$TokenRes {
  String get refreshToken => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenResCopyWith<TokenRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResCopyWith<$Res> {
  factory $TokenResCopyWith(TokenRes value, $Res Function(TokenRes) then) =
      _$TokenResCopyWithImpl<$Res, TokenRes>;
  @useResult
  $Res call({String refreshToken, String accessToken});
}

/// @nodoc
class _$TokenResCopyWithImpl<$Res, $Val extends TokenRes>
    implements $TokenResCopyWith<$Res> {
  _$TokenResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenResCopyWith<$Res> implements $TokenResCopyWith<$Res> {
  factory _$$_TokenResCopyWith(
          _$_TokenRes value, $Res Function(_$_TokenRes) then) =
      __$$_TokenResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refreshToken, String accessToken});
}

/// @nodoc
class __$$_TokenResCopyWithImpl<$Res>
    extends _$TokenResCopyWithImpl<$Res, _$_TokenRes>
    implements _$$_TokenResCopyWith<$Res> {
  __$$_TokenResCopyWithImpl(
      _$_TokenRes _value, $Res Function(_$_TokenRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_$_TokenRes(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenRes implements _TokenRes {
  _$_TokenRes({required this.refreshToken, required this.accessToken});

  factory _$_TokenRes.fromJson(Map<String, dynamic> json) =>
      _$$_TokenResFromJson(json);

  @override
  final String refreshToken;
  @override
  final String accessToken;

  @override
  String toString() {
    return 'TokenRes(refreshToken: $refreshToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenRes &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenResCopyWith<_$_TokenRes> get copyWith =>
      __$$_TokenResCopyWithImpl<_$_TokenRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenResToJson(
      this,
    );
  }
}

abstract class _TokenRes implements TokenRes {
  factory _TokenRes(
      {required final String refreshToken,
      required final String accessToken}) = _$_TokenRes;

  factory _TokenRes.fromJson(Map<String, dynamic> json) = _$_TokenRes.fromJson;

  @override
  String get refreshToken;
  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_TokenResCopyWith<_$_TokenRes> get copyWith =>
      throw _privateConstructorUsedError;
}
