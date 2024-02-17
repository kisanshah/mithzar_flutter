//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Message {
  /// Returns a new [Message] instance.
  Message({
    this.message,
  });

  @JsonKey(name: r'message', required: false, includeIfNull: false)
  final String? message;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Message && other.message == message;

  @override
  int get hashCode => message.hashCode;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
