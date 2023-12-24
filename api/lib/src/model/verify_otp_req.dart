//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_req.freezed.dart';
part 'verify_otp_req.g.dart';


@freezed
class VerifyOtpReq with _$VerifyOtpReq {

const factory VerifyOtpReq({
    num? otp,
    ///  this.otp,
    String? userId,
    ///  this.userId,
}) = _VerifyOtpReq;

factory VerifyOtpReq.fromJson(Map<String, Object?> json)
=> _$VerifyOtpReqFromJson(json);
}

