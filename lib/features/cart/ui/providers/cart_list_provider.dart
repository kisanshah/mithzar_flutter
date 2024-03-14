import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/features/cart/data/repository/cart_repo_impl.dart';
import 'package:mithzar/features/cart/domain/repository/cart_repository.dart';
import 'package:mithzar/features/cart/ui/providers/cart_provider.dart';
import 'package:mithzar/features/orders/data/repository/order_repo_impl.dart';
import 'package:mithzar/features/orders/domain/repository/order_repository.dart';
import 'package:mithzar/features/routes/router/app_router.gr.dart';
import 'package:mithzar/features/shared/providers/router_provider.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_list_provider.g.dart';

@riverpod
class CartListNotifier extends _$CartListNotifier {
  late CartRepository repo;
  late OrderRepository orderRepo;

  @override
  State<List<Cart>> build() {
    repo = ref.watch(cartRepoProvider);
    orderRepo = ref.watch(orderRepoProvider);
    observe();
    return LoadingState();
  }

  Future<void> fetch() async {
    final result = await repo.getCartItems();
    state = result.state();
  }

  Future<void> checkout() async {
    final result = await orderRepo.checkout();
    if (result.url != null) {
      ref.read(routerProvider).push(PaymentRoute(url: result.url!));
    }
  }

  void observe() {
    ref.listen(cartItemNotifierProvider, (previous, next) {
      if (next is ResultState && next.data != null) {
        final items = [...?state.data];
        final index =
            items.indexWhere((element) => element.id == next.data?.id);
        // FIXME(Kisan): fix copyWith
        final elem = items[index];
        // .copyWith(quantity: next.data!.quantity);

        items.removeAt(index);
        if ((elem.quantity ?? 0) > 0) {
          items.insert(index, elem);
        }
        state = ResultState(
          data: items,
        );
      }
    });
  }
}
