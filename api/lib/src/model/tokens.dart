//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens.freezed.dart';
part 'tokens.g.dart';

@freezed
class Tokens with _$Tokens {
  const factory Tokens({
    String? refreshToken,
    String? accessToken,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, Object?> json) => _$TokensFromJson(json);
}
