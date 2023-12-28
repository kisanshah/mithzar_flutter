//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/product_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    int? id,

    ///  this.id,
    String? name,

    ///  this.name,
    String? description,

    ///  this.description,
    double? price,

    ///  this.price,
    ProductImage? thumbnail,

    ///  this.thumbnail,
    List<ProductImage>? images,

    ///  this.images,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
