//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'cart_amount_breakdown.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CartAmountBreakdown {
  /// Returns a new [CartAmountBreakdown] instance.
  CartAmountBreakdown({
    this.subtotal,
    this.tax,
    this.delivery,
    this.total,
  });

  /// The total cost before tax and delivery.
  @JsonKey(name: r'subtotal', required: false, includeIfNull: false)
  final double? subtotal;

  /// The tax amount.
  @JsonKey(name: r'tax', required: false, includeIfNull: false)
  final double? tax;

  /// The delivery fee.
  @JsonKey(name: r'delivery', required: false, includeIfNull: false)
  final double? delivery;

  /// The total cost including tax and delivery.
  @JsonKey(name: r'total', required: false, includeIfNull: false)
  final double? total;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartAmountBreakdown &&
          other.subtotal == subtotal &&
          other.tax == tax &&
          other.delivery == delivery &&
          other.total == total;

  @override
  int get hashCode =>
      subtotal.hashCode + tax.hashCode + delivery.hashCode + total.hashCode;

  factory CartAmountBreakdown.fromJson(Map<String, dynamic> json) =>
      _$CartAmountBreakdownFromJson(json);

  Map<String, dynamic> toJson() => _$CartAmountBreakdownToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
