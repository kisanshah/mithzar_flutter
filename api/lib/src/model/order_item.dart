//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'order_item.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderItem {
  /// Returns a new [OrderItem] instance.
  OrderItem({
    this.id,
    this.quantity,
    this.price,
    this.name,
    this.variantName,
    this.skuName,
    this.variantId,
    this.skuId,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'quantity', required: false, includeIfNull: false)
  final int? quantity;

  @JsonKey(name: r'price', required: false, includeIfNull: false)
  final int? price;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'variantName', required: false, includeIfNull: false)
  final String? variantName;

  @JsonKey(name: r'skuName', required: false, includeIfNull: false)
  final String? skuName;

  @JsonKey(name: r'variantId', required: false, includeIfNull: false)
  final int? variantId;

  @JsonKey(name: r'skuId', required: false, includeIfNull: false)
  final int? skuId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderItem &&
          other.id == id &&
          other.quantity == quantity &&
          other.price == price &&
          other.name == name &&
          other.variantName == variantName &&
          other.skuName == skuName &&
          other.variantId == variantId &&
          other.skuId == skuId;

  @override
  int get hashCode =>
      id.hashCode +
      quantity.hashCode +
      price.hashCode +
      name.hashCode +
      variantName.hashCode +
      skuName.hashCode +
      variantId.hashCode +
      skuId.hashCode;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
