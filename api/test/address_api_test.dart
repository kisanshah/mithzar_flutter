import 'package:test/test.dart';
import 'package:api/api.dart';


/// tests for AddressApi
void main() {
  final instance = Api().getAddressApi();

  group(AddressApi, () {
    // Get all user addresses
    //
    //Future<BuiltList<Address>> addressAllGet() async
    test('test addressAllGet', () async {
      // TODO
    });

    // Mark the address as default
    //
    //Future<Success> addressDefaultIdPatch(int id) async
    test('test addressDefaultIdPatch', () async {
      // TODO
    });

    // Get all user addresses
    //
    //Future<Success> addressIdDelete(int id) async
    test('test addressIdDelete', () async {
      // TODO
    });

    // save new address for the user and return new address object
    //
    //Future<Address> addressSavePost({ Address address }) async
    test('test addressSavePost', () async {
      // TODO
    });

    // update the address with the new address
    //
    //Future<Address> addressUpdatePut({ Address address }) async
    test('test addressUpdatePut', () async {
      // TODO
    });

  });
}
