import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_provider.dart';
import 'package:mithzar/src/address/domain/repository/address_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_repo_impl.g.dart';

@riverpod
AddressRepo addressRepo(AddressRepoRef ref) {
  return AddressRepoImpl(ref.watch(apiProvider).getAddressApi());
}

class AddressRepoImpl extends AddressRepo {
  AddressRepoImpl(this._source);

  final AddressApi _source;

  @override
  Future<List<Address>> getAddressList() {
    return _source.getAddresses().guard();
  }

  @override
  Future<SuccessResponse> deleteAddress(int id) {
    return _source.delete(id: id).guard<SuccessResponse>();
  }

  @override
  Future<Address> saveAddress(Address address) {
    return _source.save(address: address).guard<Address>();
  }

  @override
  Future<Address> updateAddress(Address address) {
    return _source.updateAddress(address: address).guard<Address>();
  }

  @override
  Future<Address> setDefault(int id) {
    return _source.setDefaultAddress(id: id).guard<Address>();
  }
}
