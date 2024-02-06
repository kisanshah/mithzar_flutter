import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class AddressRepo {
  Future<(List<Address>?, AppError?)> getAddressList();
  Future<(Address?, AppError?)> saveAddress(Address address);
  Future<(Address?, AppError?)> updateAddress(Address address);
  Future<(Address?, AppError?)> deleteAddress(int id);
  Future<(Address?, AppError?)> setDefault(int id);
}
