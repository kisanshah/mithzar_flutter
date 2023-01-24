import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    @Default(false) bool otpSent,
    @Default(false) bool otpVerified,
    @Default(false) bool loading,
    @Default('') String error,
  }) = _RegisterState;
}
