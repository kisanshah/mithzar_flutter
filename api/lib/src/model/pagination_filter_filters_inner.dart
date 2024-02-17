//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'pagination_filter_filters_inner.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginationFilterFiltersInner {
  /// Returns a new [PaginationFilterFiltersInner] instance.
  PaginationFilterFiltersInner({
    this.key,
    this.value,
    this.mode,
  });

  @JsonKey(name: r'key', required: false, includeIfNull: false)
  final String? key;

  @JsonKey(name: r'value', required: false, includeIfNull: false)
  final Object? value;

  @JsonKey(name: r'mode', required: false, includeIfNull: false)
  final PaginationFilterFiltersInnerModeEnum? mode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaginationFilterFiltersInner &&
          other.key == key &&
          other.value == value &&
          other.mode == mode;

  @override
  int get hashCode => key.hashCode + value.hashCode + mode.hashCode;

  factory PaginationFilterFiltersInner.fromJson(Map<String, dynamic> json) =>
      _$PaginationFilterFiltersInnerFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationFilterFiltersInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum PaginationFilterFiltersInnerModeEnum {
  @JsonValue(r'startsWith')
  startsWith,
  @JsonValue(r'contains')
  contains,
  @JsonValue(r'notContains')
  notContains,
  @JsonValue(r'endsWith')
  endsWith,
  @JsonValue(r'equals')
  equals,
  @JsonValue(r'notEquals')
  notEquals,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}
