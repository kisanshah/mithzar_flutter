//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_req.freezed.dart';
part 'verify_otp_req.g.dart';

@freezed
class VerifyOtpReq with _$VerifyOtpReq {
// ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory VerifyOtpReq({
    num? otp,
    String? userId,
  }) = _VerifyOtpReq;

  factory VerifyOtpReq.fromJson(Map<String, Object?> json) =>
      _$VerifyOtpReqFromJson(json);
}
