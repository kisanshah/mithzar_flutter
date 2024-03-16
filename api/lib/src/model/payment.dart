//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'payment.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Payment {
  /// Returns a new [Payment] instance.
  Payment({
    this.status,
    this.method,
    this.bank,
  });

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: r'method', required: false, includeIfNull: false)
  final String? method;

  @JsonKey(name: r'bank', required: false, includeIfNull: false)
  final String? bank;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Payment &&
          other.status == status &&
          other.method == method &&
          other.bank == bank;

  @override
  int get hashCode => status.hashCode + method.hashCode + bank.hashCode;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
