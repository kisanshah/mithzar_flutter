//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'sign_in_with_phone_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SignInWithPhoneRequest {
  /// Returns a new [SignInWithPhoneRequest] instance.
  SignInWithPhoneRequest({
    this.token,
    this.platform,
  });

  @JsonKey(name: r'token', required: false, includeIfNull: false)
  final String? token;

  @JsonKey(name: r'platform', required: false, includeIfNull: false)
  final SignInWithPhoneRequestPlatformEnum? platform;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignInWithPhoneRequest &&
          other.token == token &&
          other.platform == platform;

  @override
  int get hashCode => token.hashCode + platform.hashCode;

  factory SignInWithPhoneRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInWithPhoneRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignInWithPhoneRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum SignInWithPhoneRequestPlatformEnum {
  @JsonValue(r'ANDROID')
  ANDROID,
  @JsonValue(r'IOS')
  IOS,
  @JsonValue(r'WEB')
  WEB,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}
