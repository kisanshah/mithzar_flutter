import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/features/cart/data/repository/cart_repo_impl.dart';
import 'package:e_commerce_front_end/features/cart/domain/repository/cart_repository.dart';
import 'package:e_commerce_front_end/features/orders/data/repository/order_repo_impl.dart';
import 'package:e_commerce_front_end/features/orders/domain/repository/order_repository.dart';
import 'package:e_commerce_front_end/features/routes/router/app_router.gr.dart';
import 'package:e_commerce_front_end/features/shared/providers/router_provider.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

@riverpod
class AddToCart extends _$AddToCart {
  late CartRepository _repo;
  @override
  State<Cart> build() {
    _repo = ref.watch(cartRepoProvider);
    return ResultState(data: const Cart());
  }

  Future<void> addToCart(int id) async {
    state = LoadingState();
    final result = await _repo.addToCart(id);
    state = result.state();
  }
}

@riverpod
class CartNotifier extends _$CartNotifier {
  late CartRepository repo;
  late OrderRepository orderRepo;

  @override
  State<List<Cart>> build() {
    repo = ref.watch(cartRepoProvider);
    orderRepo = ref.watch(orderRepoProvider);

    fetch();
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
}
