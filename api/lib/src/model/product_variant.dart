//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/product_image.dart';
import 'package:api/src/model/product_sku.dart';
import 'package:api/src/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant.freezed.dart';
part 'product_variant.g.dart';

@freezed
class ProductVariant with _$ProductVariant {
// ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductVariant({
    int? id,
    int? productId,
    String? name,
    String? color,
    double? price,
    ProductImage? thumbnail,
    List<ProductImage>? images,
    List<ProductSku>? skus,
    Product? product,
  }) = _ProductVariant;

  factory ProductVariant.fromJson(Map<String, Object?> json) =>
      _$ProductVariantFromJson(json);
}
