import 'package:api/api.dart' as api;
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_provider.dart';
import 'package:mithzar/src/address/providers/address_provider.dart';
import 'package:mithzar/src/shared/providers/router_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_address_provider.g.dart';

@riverpod
class SaveAddress extends _$SaveAddress {
  @override
  Future<void> build() async {}

  Future<void> save(api.Address address) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () async {
        await ref
            .read(apiProvider)
            .getAddressApi()
            .save(address: address)
            .guard<api.Address>();
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

  void toggle() => state = !state;
}
