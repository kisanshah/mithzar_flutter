import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/features/address/data/repository/address_repo_impl.dart';
import 'package:mithzar/features/address/domain/repository/address_repo.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_list_provider.g.dart';

@riverpod
class AddressListNotifier extends _$AddressListNotifier {
  late AddressRepo _repo;
  @override
  State<List<Address>> build() {
    _repo = ref.watch(addressRepoProvider);
    return LoadingState();
  }

  Future<void> fetch() async {
    final addresses = await _repo.getAddressList();
    state = addresses.state();
  }
}
