//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/product_sku.dart';
import 'package:api/src/model/product_variant.dart';
import 'package:api/src/model/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Cart {
  /// Returns a new [Cart] instance.
  Cart({
    this.id,
    this.quantity,
    this.product,
    this.variant,
    this.sku,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'quantity', required: false, includeIfNull: false)
  final int? quantity;

  @JsonKey(name: r'product', required: false, includeIfNull: false)
  final Product? product;

  @JsonKey(name: r'variant', required: false, includeIfNull: false)
  final ProductVariant? variant;

  @JsonKey(name: r'sku', required: false, includeIfNull: false)
  final ProductSku? sku;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Cart &&
          other.id == id &&
          other.quantity == quantity &&
          other.product == product &&
          other.variant == variant &&
          other.sku == sku;

  @override
  int get hashCode =>
      id.hashCode +
      quantity.hashCode +
      product.hashCode +
      variant.hashCode +
      sku.hashCode;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
