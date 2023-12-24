//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    num? id,

    ///  this.id,
    String? streetAddress,

    ///  this.streetAddress,
    String? city,

    ///  this.city,
    String? state,

    ///  this.state,
    String? postalCode,

    ///  this.postalCode,
    String? country,

    ///  this.country,
    num? lat,

    ///  this.lat,
    num? lng,

    ///  this.lng,
    bool? default_,

    ///  this.default_,
    int? userId,

    ///  this.userId,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}
