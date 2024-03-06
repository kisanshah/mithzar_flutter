//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VerifyOtpRequest {
  /// Returns a new [VerifyOtpRequest] instance.
  VerifyOtpRequest({
    this.otp,
    this.user,
  });

  @JsonKey(name: r'otp', required: false, includeIfNull: false)
  final String? otp;

  @JsonKey(name: r'user', required: false, includeIfNull: false)
  final User? user;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VerifyOtpRequest && other.otp == otp && other.user == user;

  @override
  int get hashCode => otp.hashCode + user.hashCode;

  factory VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
