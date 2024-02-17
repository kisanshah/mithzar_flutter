//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AddToCartRequest {
  /// Returns a new [AddToCartRequest] instance.
  AddToCartRequest({
    this.variantId,
    this.skuId,
  });

  @JsonKey(name: r'variantId', required: false, includeIfNull: false)
  final int? variantId;

  @JsonKey(name: r'skuId', required: false, includeIfNull: false)
  final int? skuId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddToCartRequest &&
          other.variantId == variantId &&
          other.skuId == skuId;

  @override
  int get hashCode => variantId.hashCode + skuId.hashCode;

  factory AddToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$AddToCartRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddToCartRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
