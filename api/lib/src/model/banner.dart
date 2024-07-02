//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Banner {
  /// Returns a new [Banner] instance.
  Banner({
    this.id,
    this.title,
    this.description,
    this.imageUrl,
    this.startDate,
    this.endDate,
    this.isActive,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(name: r'imageUrl', required: false, includeIfNull: false)
  final String? imageUrl;

  @JsonKey(name: r'startDate', required: false, includeIfNull: false)
  final DateTime? startDate;

  @JsonKey(name: r'endDate', required: false, includeIfNull: false)
  final DateTime? endDate;

  @JsonKey(name: r'isActive', required: false, includeIfNull: false)
  final bool? isActive;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Banner &&
          other.id == id &&
          other.title == title &&
          other.description == description &&
          other.imageUrl == imageUrl &&
          other.startDate == startDate &&
          other.endDate == endDate &&
          other.isActive == isActive;

  @override
  int get hashCode =>
      id.hashCode +
      title.hashCode +
      description.hashCode +
      imageUrl.hashCode +
      startDate.hashCode +
      endDate.hashCode +
      isActive.hashCode;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);

  Map<String, dynamic> toJson() => _$BannerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
