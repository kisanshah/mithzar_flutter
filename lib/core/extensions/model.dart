import 'package:api/api.dart';

extension AddressExt on Address {
  String get formatted => [
        streetAddress,
        state,
        city,
        postalCode,
      ].join(', ');
}
