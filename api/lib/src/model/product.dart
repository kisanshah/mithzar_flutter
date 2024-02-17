//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/product_variant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Product {
  /// Returns a new [Product] instance.
  Product({
    this.id,
    this.name,
    this.description,
    this.variants,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(name: r'variants', required: false, includeIfNull: false)
  final List<ProductVariant>? variants;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          other.id == id &&
          other.name == name &&
          other.description == description &&
          other.variants == variants;

  @override
  int get hashCode =>
      id.hashCode + name.hashCode + description.hashCode + variants.hashCode;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
