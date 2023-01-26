// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String email,
      String password,
      String error,
      bool loading,
      bool success});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? error = null,
    Object? loading = null,
    Object? success = null,
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
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInPageStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInPageStateCopyWith(
          _$_SignInPageState value, $Res Function(_$_SignInPageState) then) =
      __$$_SignInPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String error,
      bool loading,
      bool success});
}

/// @nodoc
class __$$_SignInPageStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInPageState>
    implements _$$_SignInPageStateCopyWith<$Res> {
  __$$_SignInPageStateCopyWithImpl(
      _$_SignInPageState _value, $Res Function(_$_SignInPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? error = null,
    Object? loading = null,
    Object? success = null,
  }) {
    return _then(_$_SignInPageState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInPageState implements _SignInPageState {
  _$_SignInPageState(
      {this.email = '',
      this.password = '',
      this.error = '',
      this.loading = false,
      this.success = false});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, error: $error, loading: $loading, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInPageState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, error, loading, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInPageStateCopyWith<_$_SignInPageState> get copyWith =>
      __$$_SignInPageStateCopyWithImpl<_$_SignInPageState>(this, _$identity);
}

abstract class _SignInPageState implements SignInState {
  factory _SignInPageState(
      {final String email,
      final String password,
      final String error,
      final bool loading,
      final bool success}) = _$_SignInPageState;

  @override
  String get email;
  @override
  String get password;
  @override
  String get error;
  @override
  bool get loading;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_SignInPageStateCopyWith<_$_SignInPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
