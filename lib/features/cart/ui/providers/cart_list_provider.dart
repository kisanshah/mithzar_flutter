import 'package:api/api.dart';
import 'package:mithzar/features/cart/data/repository/cart_repo_impl.dart';
import 'package:mithzar/features/cart/domain/repository/cart_repository.dart';
import 'package:mithzar/features/orders/domain/repository/order_repository.dart';
import 'package:mithzar/features/routes/router/app_router.gr.dart';
import 'package:mithzar/features/shared/providers/router_provider.dart';
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
    final item = await repo.add(variantId, skuId);
    _update(item);
  }

  Future<void> remove(int id) async {
    final item = await repo.remove(id);
    _update(item);
  }

  void _update(Cart item) {
    if (!state.hasValue) {
      return;
    }
    final items = state.value ?? [];
    final modified = items.indexWhere(
      (element) =>
          element.variant?.id == item.variant?.id &&
          element.sku?.id == item.sku?.id,
    );
    if (modified == -1) {
      return;
    }
    items[modified] = item;
    state = AsyncData(items);
  }

  Future<void> checkout() async {
    final result = await orderRepo.checkout();
    if (result.url != null) {
      ref.read(routerProvider).push(PaymentRoute(url: result.url!));
    }
  }
}
