//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_res.freezed.dart';
part 'api_res.g.dart';

@freezed
class ApiRes with _$ApiRes {
  const factory ApiRes({
    String? message,

    ///  this.message,
    bool? success,

    ///  this.success,
  }) = _ApiRes;

  factory ApiRes.fromJson(Map<String, Object?> json) => _$ApiResFromJson(json);
}
