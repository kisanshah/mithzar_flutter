import 'package:api/api.dart';

abstract class AddressRepo {
  Future<List<Address>> getAddressList();
  Future<Address> saveAddress(Address address);
  Future<Address> updateAddress(Address address);
  Future<SuccessResponse> deleteAddress(int id);
  Future<Address> setDefault(int id);
}