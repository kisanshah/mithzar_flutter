//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'checkout.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Checkout {
  /// Returns a new [Checkout] instance.
  Checkout({
    this.url,
    this.orderId,
  });

  @JsonKey(name: r'url', required: false, includeIfNull: false)
  final String? url;

  @JsonKey(name: r'orderId', required: false, includeIfNull: false)
  final num? orderId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Checkout && other.url == url && other.orderId == orderId;

  @override
  int get hashCode => url.hashCode + orderId.hashCode;

  factory Checkout.fromJson(Map<String, dynamic> json) =>
      _$CheckoutFromJson(json);

  Map<String, dynamic> toJson() => _$CheckoutToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
