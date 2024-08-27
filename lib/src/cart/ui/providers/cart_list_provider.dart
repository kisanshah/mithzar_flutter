import 'package:api/api.dart';
import 'package:mithzar/src/cart/data/repository/cart_repo_impl.dart';
import 'package:mithzar/src/cart/domain/repository/cart_repository.dart';
import 'package:mithzar/src/orders/domain/repository/order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_list_provider.g.dart';

@riverpod
class CartList extends _$CartList {
  late CartRepository repo;
  late OrderRepository orderRepo;

  @override
  Future<List<Cart>> build() {
    repo = ref.watch(cartRepoProvider);
    return repo.getCartItems();
  }

  Future<void> add(int variantId, int skuId) async {
    state = await AsyncValue.guard(() async {
      final item = await repo.add(variantId, skuId);
      return _update(item).value ?? [];
    });
  }

  Future<void> remove(int id) async {
    state = await AsyncValue.guard(() async {
      final item = await repo.remove(id);
      return _update(item).value ?? [];
    });
  }

  AsyncValue<List<Cart>> _update(Cart item) {
    state = const AsyncLoading();
    if (!state.hasValue) {
      return state;
    }
    final items = state.value ?? [];
    final modified = items.indexWhere(
      (element) =>
          element.variant?.id == item.variant?.id &&
          element.sku?.id == item.sku?.id,
    );
    if (modified == -1) {
      return state;
    }
    items[modified] = item;
    return AsyncData(items);
  }
}
