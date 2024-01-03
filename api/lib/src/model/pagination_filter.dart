//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_filter.freezed.dart';
part 'pagination_filter.g.dart';

@freezed
class PaginationFilter with _$PaginationFilter {
  const factory PaginationFilter({
    String? search,
    String? orderBy,
    String? order,
    int? page,
    int? size,
  }) = _PaginationFilter;

  factory PaginationFilter.fromJson(Map<String, Object?> json) =>
      _$PaginationFilterFromJson(json);
}
