import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/features/address/domain/repository/address_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_repo_impl.g.dart';

@riverpod
AddressRepo addressRepo(AddressRepoRef ref) {
  return AddressRepoImpl(ref.watch(apiClientProvider).getAddressApi());
}

class AddressRepoImpl extends AddressRepo {
  AddressRepoImpl(this._source);

  final AddressApi _source;

  @override
  Future<List<Address>> getAddressList() {
    return _source.getAddresses().guard();
  }

  @override
  Future<(Address?, AppError?)> deleteAddress(int id) {
    return _source.delete(id: id).toRecord();
  }

  @override
  Future<(Address?, AppError?)> saveAddress(Address address) {
    return _source.save(address: address).toRecord();
  }

  @override
  Future<(Address?, AppError?)> updateAddress(Address address) {
    return _source.updateAddress(address: address).toRecord();
  }

  @override
  Future<(Address?, AppError?)> setDefault(int id) {
    return _source.setDefaultAddress(id: id).toRecord();
  }
}
