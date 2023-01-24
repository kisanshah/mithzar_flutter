// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterReq _$RegisterReqFromJson(Map<String, dynamic> json) {
  return _RegisterReq.fromJson(json);
}

/// @nodoc
mixin _$RegisterReq {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterReqCopyWith<RegisterReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterReqCopyWith<$Res> {
  factory $RegisterReqCopyWith(
          RegisterReq value, $Res Function(RegisterReq) then) =
      _$RegisterReqCopyWithImpl<$Res, RegisterReq>;
  @useResult
  $Res call({String name, String email, String phone, String password});
}

/// @nodoc
class _$RegisterReqCopyWithImpl<$Res, $Val extends RegisterReq>
    implements $RegisterReqCopyWith<$Res> {
  _$RegisterReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterReqCopyWith<$Res>
    implements $RegisterReqCopyWith<$Res> {
  factory _$$_RegisterReqCopyWith(
          _$_RegisterReq value, $Res Function(_$_RegisterReq) then) =
      __$$_RegisterReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String phone, String password});
}

/// @nodoc
class __$$_RegisterReqCopyWithImpl<$Res>
    extends _$RegisterReqCopyWithImpl<$Res, _$_RegisterReq>
    implements _$$_RegisterReqCopyWith<$Res> {
  __$$_RegisterReqCopyWithImpl(
      _$_RegisterReq _value, $Res Function(_$_RegisterReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$_RegisterReq(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
class _$_RegisterReq implements _RegisterReq {
  _$_RegisterReq(
      {this.name = '', this.email = '', this.phone = '', this.password = ''});

  factory _$_RegisterReq.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterReqFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'RegisterReq(name: $name, email: $email, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterReq &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterReqCopyWith<_$_RegisterReq> get copyWith =>
      __$$_RegisterReqCopyWithImpl<_$_RegisterReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterReqToJson(
      this,
    );
  }
}

abstract class _RegisterReq implements RegisterReq {
  factory _RegisterReq(
      {final String name,
      final String email,
      final String phone,
      final String password}) = _$_RegisterReq;

  factory _RegisterReq.fromJson(Map<String, dynamic> json) =
      _$_RegisterReq.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterReqCopyWith<_$_RegisterReq> get copyWith =>
      throw _privateConstructorUsedError;
}
