//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
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
    this.phone,
    this.otp,
  });

  @JsonKey(name: r'phone', required: false, includeIfNull: false)
  final String? phone;

  @JsonKey(name: r'otp', required: false, includeIfNull: false)
  final String? otp;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VerifyOtpRequest && other.phone == phone && other.otp == otp;

  @override
  int get hashCode => phone.hashCode + otp.hashCode;

  factory VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
