//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/pagination_filter_filters_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pagination_filter.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginationFilter {
  /// Returns a new [PaginationFilter] instance.
  PaginationFilter({
    this.page = 0,
    this.size = 10,
    this.mode,
    this.filters,
  });

  @JsonKey(
      defaultValue: 0, name: r'page', required: false, includeIfNull: false)
  final num? page;

  @JsonKey(
      defaultValue: 10, name: r'size', required: false, includeIfNull: false)
  final num? size;

  @JsonKey(name: r'mode', required: false, includeIfNull: false)
  final PaginationFilterModeEnum? mode;

  @JsonKey(name: r'filters', required: false, includeIfNull: false)
  final List<PaginationFilterFiltersInner>? filters;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaginationFilter &&
          other.page == page &&
          other.size == size &&
          other.mode == mode &&
          other.filters == filters;

  @override
  int get hashCode =>
      page.hashCode + size.hashCode + mode.hashCode + filters.hashCode;

  factory PaginationFilter.fromJson(Map<String, dynamic> json) =>
      _$PaginationFilterFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum PaginationFilterModeEnum {
  @JsonValue(r'AND')
  AND,
  @JsonValue(r'OR')
  OR,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}
