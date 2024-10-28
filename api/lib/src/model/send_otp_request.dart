//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'send_otp_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SendOtpRequest {
  /// Returns a new [SendOtpRequest] instance.
  SendOtpRequest({
    this.phone,
  });

  @JsonKey(name: r'phone', required: false, includeIfNull: false)
  final String? phone;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SendOtpRequest && other.phone == phone;

  @override
  int get hashCode => phone.hashCode;

  factory SendOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$SendOtpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SendOtpRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
