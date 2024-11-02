import 'package:api/api.dart' as api;
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_provider.g.dart';

@riverpod
class Address extends _$Address {
  late api.AddressApi _api;

  @override
  Future<List<api.Address>> build() {
    _api = ref.read(apiProvider).getAddressApi();
    return fetch();
  }

  Future<List<api.Address>> fetch() => _api.getAddresses().guard();

  Future<void> setDefault(api.Address address) async {
    state = await AsyncValue.guard(
      () async {
        await _api.setDefaultAddress(id: address.id!.toInt());
        return fetch();
      },
    );
  }

  Future<void> delete(api.Address address) async {
    state = await AsyncValue.guard(
      () async {
        await _api.delete(id: address.id!.toInt());
        return fetch();
      },
    );
  }
}
