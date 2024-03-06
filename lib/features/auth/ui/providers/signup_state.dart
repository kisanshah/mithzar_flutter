import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    @Default(false) bool otpSent,
    @Default(false) bool otpVerified,
  }) = _RegisterState;
}
