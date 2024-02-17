//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'product_sku.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductSku {
  /// Returns a new [ProductSku] instance.
  ProductSku({
    this.id,
    this.size,
    this.stock,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'size', required: false, includeIfNull: false)
  final String? size;

  @JsonKey(name: r'stock', required: false, includeIfNull: false)
  final int? stock;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductSku &&
          other.id == id &&
          other.size == size &&
          other.stock == stock;

  @override
  int get hashCode => id.hashCode + size.hashCode + stock.hashCode;

  factory ProductSku.fromJson(Map<String, dynamic> json) =>
      _$ProductSkuFromJson(json);

  Map<String, dynamic> toJson() => _$ProductSkuToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
