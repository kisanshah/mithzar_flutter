// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInReq _$SignInReqFromJson(Map<String, dynamic> json) {
  return _SignInReq.fromJson(json);
}

/// @nodoc
mixin _$SignInReq {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInReqCopyWith<SignInReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInReqCopyWith<$Res> {
  factory $SignInReqCopyWith(SignInReq value, $Res Function(SignInReq) then) =
      _$SignInReqCopyWithImpl<$Res, SignInReq>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInReqCopyWithImpl<$Res, $Val extends SignInReq>
    implements $SignInReqCopyWith<$Res> {
  _$SignInReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInReqCopyWith<$Res> implements $SignInReqCopyWith<$Res> {
  factory _$$_SignInReqCopyWith(
          _$_SignInReq value, $Res Function(_$_SignInReq) then) =
      __$$_SignInReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignInReqCopyWithImpl<$Res>
    extends _$SignInReqCopyWithImpl<$Res, _$_SignInReq>
    implements _$$_SignInReqCopyWith<$Res> {
  __$$_SignInReqCopyWithImpl(
      _$_SignInReq _value, $Res Function(_$_SignInReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignInReq(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInReq implements _SignInReq {
  _$_SignInReq({required this.email, required this.password});

  factory _$_SignInReq.fromJson(Map<String, dynamic> json) =>
      _$$_SignInReqFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInReq(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInReq &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInReqCopyWith<_$_SignInReq> get copyWith =>
      __$$_SignInReqCopyWithImpl<_$_SignInReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInReqToJson(
      this,
    );
  }
}

abstract class _SignInReq implements SignInReq {
  factory _SignInReq(
      {required final String email,
      required final String password}) = _$_SignInReq;

  factory _SignInReq.fromJson(Map<String, dynamic> json) =
      _$_SignInReq.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignInReqCopyWith<_$_SignInReq> get copyWith =>
      throw _privateConstructorUsedError;
}
