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

    ///  this.search,
    String? orderBy,

    ///  this.orderBy,
    String? order,

    ///  this.order,
    int? page,

    ///  this.page,
    int? size,

    ///  this.size,
  }) = _PaginationFilter;

  factory PaginationFilter.fromJson(Map<String, Object?> json) =>
      _$PaginationFilterFromJson(json);
}
