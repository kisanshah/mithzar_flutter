import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_res.freezed.dart';
part 'token_res.g.dart';

@freezed
class TokenRes with _$TokenRes {
  factory TokenRes({
    required String refreshToken,
    required String accessToken,
  }) = _TokenRes;

  factory TokenRes.fromJson(Map<String, dynamic> json) =>
      _$TokenResFromJson(json);
}
