import 'package:api/api.dart' as api;
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_provider.dart';
import 'package:mithzar/src/address/providers/address_provider.dart';
import 'package:mithzar/src/shared/providers/router_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_address_provider.g.dart';

@riverpod
class SaveAddress extends _$SaveAddress {
  late api.AddressApi _api;

  @override
  Future<void> build() async {
    _api = ref.read(apiProvider).getAddressApi();
  }

  Future<void> save(api.Address address) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () async {
        if (address.id != null) {
          await _api.update(address: address).guard<api.Address>();
        } else {
          await _api.save(address: address).guard<api.Address>();
        }
        ref.invalidate(addressProvider);
        ref.read(routerProvider).maybePopTop();
      },
    );
  }
}

@riverpod
class PrimaryAddressToggle extends _$PrimaryAddressToggle {
  @override
  bool build() {
    return false;
  }

  void update(bool? value) => state = value ?? state;
}

@riverpod
class AddressType extends _$AddressType {
  @override
  api.AddressTypeEnum? build() {
    return null;
  }

  void update(api.AddressTypeEnum? type) => state = type;
}
