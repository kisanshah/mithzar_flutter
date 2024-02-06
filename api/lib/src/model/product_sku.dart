//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_sku.freezed.dart';
part 'product_sku.g.dart';

@freezed
class ProductSku with _$ProductSku {
// ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductSku({
    int? id,
    String? size,
    num? stock,
    num? price,
  }) = _ProductSku;

  factory ProductSku.fromJson(Map<String, Object?> json) =>
      _$ProductSkuFromJson(json);
}
