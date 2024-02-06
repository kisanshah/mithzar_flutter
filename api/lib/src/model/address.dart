//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
// ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Address({
    num? id,
    String? streetAddress,
    String? city,
    String? state,
    String? postalCode,
    String? country,
    num? lat,
    num? lng,
    bool? default_,
    int? userId,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}
