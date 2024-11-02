//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Address {
  /// Returns a new [Address] instance.
  Address({
    this.id,
    this.addressLine1,
    this.addressLine2,
    this.landmark,
    this.city,
    this.state,
    this.postalCode,
    this.country,
    this.lat,
    this.lng,
    this.primary,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final num? id;

  @JsonKey(name: r'addressLine1', required: false, includeIfNull: false)
  final String? addressLine1;

  @JsonKey(name: r'addressLine2', required: false, includeIfNull: false)
  final String? addressLine2;

  @JsonKey(name: r'landmark', required: false, includeIfNull: false)
  final String? landmark;

  @JsonKey(name: r'city', required: false, includeIfNull: false)
  final String? city;

  @JsonKey(name: r'state', required: false, includeIfNull: false)
  final String? state;

  @JsonKey(name: r'postalCode', required: false, includeIfNull: false)
  final String? postalCode;

  @JsonKey(name: r'country', required: false, includeIfNull: false)
  final String? country;

  @JsonKey(name: r'lat', required: false, includeIfNull: false)
  final num? lat;

  @JsonKey(name: r'lng', required: false, includeIfNull: false)
  final num? lng;

  @JsonKey(name: r'primary', required: false, includeIfNull: false)
  final bool? primary;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          other.id == id &&
          other.addressLine1 == addressLine1 &&
          other.addressLine2 == addressLine2 &&
          other.landmark == landmark &&
          other.city == city &&
          other.state == state &&
          other.postalCode == postalCode &&
          other.country == country &&
          other.lat == lat &&
          other.lng == lng &&
          other.primary == primary;

  @override
  int get hashCode =>
      id.hashCode +
      addressLine1.hashCode +
      addressLine2.hashCode +
      landmark.hashCode +
      city.hashCode +
      state.hashCode +
      postalCode.hashCode +
      country.hashCode +
      lat.hashCode +
      lng.hashCode +
      primary.hashCode;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
