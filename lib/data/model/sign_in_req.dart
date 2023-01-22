import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_req.freezed.dart';
part 'sign_in_req.g.dart';

@freezed
class SignInReq with _$SignInReq {
  factory SignInReq({
    required String email,
    required String password,
  }) = _SignInReq;

  factory SignInReq.fromJson(Map<String, Object?> json) =>
      _$SignInReqFromJson(json);
}
