//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'product_feature.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductFeature {
  /// Returns a new [ProductFeature] instance.
  ProductFeature({
    this.key,
    this.value,
  });

  @JsonKey(name: r'key', required: false, includeIfNull: false)
  final String? key;

  @JsonKey(name: r'value', required: false, includeIfNull: false)
  final String? value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFeature && other.key == key && other.value == value;

  @override
  int get hashCode => key.hashCode + value.hashCode;

  factory ProductFeature.fromJson(Map<String, dynamic> json) =>
      _$ProductFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$ProductFeatureToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
