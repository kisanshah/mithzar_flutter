import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mithzar/data/model/api_err_msg.dart';

part 'api_res.freezed.dart';
part 'api_res.g.dart';

@freezed
class ApiRes with _$ApiRes {
  factory ApiRes({
    bool? success,
    String? message,
    List<ApiErrorMessage>? errors,
  }) = _ApiRes;

  factory ApiRes.fromJson(Map<String, dynamic> json) => _$ApiResFromJson(json);
}
