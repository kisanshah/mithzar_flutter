//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/product_image.dart';
import 'package:api/src/model/product_sku.dart';
import 'package:api/src/model/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_variant.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductVariant {
  /// Returns a new [ProductVariant] instance.
  ProductVariant({
    this.id,
    this.name,
    this.color,
    this.price,
    this.images,
    this.thumbnail,
    this.product,
    this.skus,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: r'price', required: false, includeIfNull: false)
  final num? price;

  @JsonKey(name: r'images', required: false, includeIfNull: false)
  final List<ProductImage>? images;

  @JsonKey(name: r'thumbnail', required: false, includeIfNull: false)
  final String? thumbnail;

  @JsonKey(name: r'product', required: false, includeIfNull: false)
  final Product? product;

  @JsonKey(name: r'skus', required: false, includeIfNull: false)
  final List<ProductSku>? skus;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductVariant &&
          other.id == id &&
          other.name == name &&
          other.color == color &&
          other.price == price &&
          other.images == images &&
          other.thumbnail == thumbnail &&
          other.product == product &&
          other.skus == skus;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      color.hashCode +
      price.hashCode +
      images.hashCode +
      thumbnail.hashCode +
      product.hashCode +
      skus.hashCode;

  factory ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantFromJson(json);

  Map<String, dynamic> toJson() => _$ProductVariantToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
