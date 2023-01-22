import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_err_msg.freezed.dart';
part 'api_err_msg.g.dart';

@freezed
class ApiErrorMessage with _$ApiErrorMessage {
  factory ApiErrorMessage({
    @Default('') String message,
  }) = _ApiErrorMessage;

  factory ApiErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorMessageFromJson(json);
}
