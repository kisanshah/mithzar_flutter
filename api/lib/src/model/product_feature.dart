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
    this.title,
    this.description,
  });

  @JsonKey(name: r'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFeature &&
          other.title == title &&
          other.description == description;

  @override
  int get hashCode => title.hashCode + description.hashCode;

  factory ProductFeature.fromJson(Map<String, dynamic> json) =>
      _$ProductFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$ProductFeatureToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
