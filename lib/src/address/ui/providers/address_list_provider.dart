import 'package:api/api.dart';
import 'package:mithzar/core/extensions/iterable.dart';
import 'package:mithzar/src/address/data/repository/address_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_list_provider.g.dart';

@riverpod
FutureOr<List<Address>> addressList(AddressListRef ref) {
  return ref.watch(addressRepoProvider).getAddressList();
}

@riverpod
Address? primaryAddress(PrimaryAddressRef ref) {
  final result = ref.watch(addressListProvider).valueOrNull?.firstOrNull(
        (element) => element.primary ?? false,
      );
  return result;
}
