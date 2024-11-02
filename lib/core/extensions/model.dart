import 'package:api/api.dart';

extension AddressExt on Address {
  String get formatted => [
        addressLine1,
        addressLine2,
        state,
        city,
        pincode,
      ].join(', ');
}
