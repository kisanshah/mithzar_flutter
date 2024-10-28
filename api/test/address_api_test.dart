import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for AddressApi
void main() {
  final instance = Api().getAddressApi();

  group(AddressApi, () {
    // delete user address by id
    //
    //Future<SuccessResponse> delete(int id) async
    test('test delete', () async {
      // TODO
    });

    // Get all user addresses
    //
    //Future<List<Address>> getAddresses() async
    test('test getAddresses', () async {
      // TODO
    });

    // save new address for the user and return new address object
    //
    //Future<Address> save({ Address address }) async
    test('test save', () async {
      // TODO
    });

    // Mark the address as default
    //
    //Future<Address> setDefaultAddress(int id) async
    test('test setDefaultAddress', () async {
      // TODO
    });

    // update the address with the new address
    //
    //Future<Address> updateAddress({ Address address }) async
    test('test updateAddress', () async {
      // TODO
    });
  });
}
