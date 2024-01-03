//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image.freezed.dart';
part 'product_image.g.dart';

@freezed
class ProductImage with _$ProductImage {
  const factory ProductImage({
    int? id,
    String? url,
    bool? active,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, Object?> json) =>
      _$ProductImageFromJson(json);
}
