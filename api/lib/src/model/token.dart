//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Token {
  /// Returns a new [Token] instance.
  Token({
    this.refreshToken,
    this.accessToken,
  });

  @JsonKey(name: r'refresh_token', required: false, includeIfNull: false)
  final String? refreshToken;

  @JsonKey(name: r'access_token', required: false, includeIfNull: false)
  final String? accessToken;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Token &&
          other.refreshToken == refreshToken &&
          other.accessToken == accessToken;

  @override
  int get hashCode => refreshToken.hashCode + accessToken.hashCode;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
