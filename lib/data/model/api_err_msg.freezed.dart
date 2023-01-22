// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_err_msg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiErrorMessage _$ApiErrorMessageFromJson(Map<String, dynamic> json) {
  return _ApiErrorMessage.fromJson(json);
}

/// @nodoc
mixin _$ApiErrorMessage {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorMessageCopyWith<ApiErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorMessageCopyWith<$Res> {
  factory $ApiErrorMessageCopyWith(
          ApiErrorMessage value, $Res Function(ApiErrorMessage) then) =
      _$ApiErrorMessageCopyWithImpl<$Res, ApiErrorMessage>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ApiErrorMessageCopyWithImpl<$Res, $Val extends ApiErrorMessage>
    implements $ApiErrorMessageCopyWith<$Res> {
  _$ApiErrorMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiErrorMessageCopyWith<$Res>
    implements $ApiErrorMessageCopyWith<$Res> {
  factory _$$_ApiErrorMessageCopyWith(
          _$_ApiErrorMessage value, $Res Function(_$_ApiErrorMessage) then) =
      __$$_ApiErrorMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ApiErrorMessageCopyWithImpl<$Res>
    extends _$ApiErrorMessageCopyWithImpl<$Res, _$_ApiErrorMessage>
    implements _$$_ApiErrorMessageCopyWith<$Res> {
  __$$_ApiErrorMessageCopyWithImpl(
      _$_ApiErrorMessage _value, $Res Function(_$_ApiErrorMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ApiErrorMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiErrorMessage implements _ApiErrorMessage {
  _$_ApiErrorMessage({this.message = ''});

  factory _$_ApiErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ApiErrorMessageFromJson(json);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ApiErrorMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiErrorMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiErrorMessageCopyWith<_$_ApiErrorMessage> get copyWith =>
      __$$_ApiErrorMessageCopyWithImpl<_$_ApiErrorMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiErrorMessageToJson(
      this,
    );
  }
}

abstract class _ApiErrorMessage implements ApiErrorMessage {
  factory _ApiErrorMessage({final String message}) = _$_ApiErrorMessage;

  factory _ApiErrorMessage.fromJson(Map<String, dynamic> json) =
      _$_ApiErrorMessage.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ApiErrorMessageCopyWith<_$_ApiErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
