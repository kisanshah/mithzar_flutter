//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/product_variant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'section.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Section {
  /// Returns a new [Section] instance.
  Section({
    this.id,
    this.title,
    this.variants,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: r'variants', required: false, includeIfNull: false)
  final List<ProductVariant>? variants;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Section &&
          other.id == id &&
          other.title == title &&
          other.variants == variants;

  @override
  int get hashCode => id.hashCode + title.hashCode + variants.hashCode;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);

  Map<String, dynamic> toJson() => _$SectionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
