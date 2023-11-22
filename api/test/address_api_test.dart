import 'package:test/test.dart';
import 'package:api/api.dart';


/// tests for AddressApi
void main() {
  final instance = Api().getAddressApi();

  group(AddressApi, () {
    // Get all user addresses
    //
    //Future<Success> addressIdDelete(int id) async
    test('test addressIdDelete', () async {
      // TODO
    });

    // Get all user addresses
    //
    //Future<List<Address>> getAddressList() async
    test('test getAddressList', () async {
      // TODO
    });

    // save new address for the user and return new address object
    //
    //Future<Address> saveAddress({ Address address }) async
    test('test saveAddress', () async {
      // TODO
    });

    // Mark the address as default
    //
    //Future<Success> setDefaultAddress(int id) async
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
