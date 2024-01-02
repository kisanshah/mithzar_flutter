import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/features/cart/data/repository/cart_repo_impl.dart';
import 'package:e_commerce_front_end/features/cart/domain/repository/cart_repository.dart';
import 'package:e_commerce_front_end/features/cart/ui/providers/cart_provider.dart';
import 'package:e_commerce_front_end/features/orders/data/repository/order_repo_impl.dart';
import 'package:e_commerce_front_end/features/orders/domain/repository/order_repository.dart';
import 'package:e_commerce_front_end/features/routes/router/app_router.gr.dart';
import 'package:e_commerce_front_end/features/shared/providers/router_provider.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
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
    result.fold((l) => null, (res) {
      if (res.url != null) {
        ref.read(routerProvider).push(PaymentRoute(url: res.url!));
      }
    });
  }

  void observe() {
    ref.listen(cartItemNotifierProvider, (previous, next) {
      if (next is ResultState && next.data != null) {
        final items = [...?state.data];
        final index =
            items.indexWhere((element) => element.id == next.data?.id);
        final elem = items[index].copyWith(quantity: next.data!.quantity);

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
