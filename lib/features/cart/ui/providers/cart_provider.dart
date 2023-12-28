import 'package:api/api.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';
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
FutureOr<ApiRes> addToCart(AddToCartRef ref, int id) async {
  final result = await ref.watch(cartRepoProvider).addToCart(id);
  return result.fold(
    (l) => const ApiRes(success: false),
    (res) => res,
  );
}

@riverpod
class CartNotifier extends _$CartNotifier {
  late CartRepository repo;
  late OrderRepository orderRepo;

  @override
  UserState<List<Cart>> build() {
    repo = ref.watch(cartRepoProvider);
    orderRepo = ref.watch(orderRepoProvider);

    fetch();
    return UserState(data: []);
  }

  Future<void> fetch() async {
    final result = await repo.getCartItems();
    state = result.fold(
      onError,
      (res) => state.copyWith(data: res, loading: false),
    );
  }

  Future<void> checkout() async {
    final result = await orderRepo.checkout();
    result.fold((l) => null, (res) {
      if (res.url != null) {
        ref.read(routerProvider).push(PaymentRoute(url: res.url!));
      }
    });
  }

  UserState<List<Cart>> onError(AppError error) {
    return state.copyWith(
      loading: false,
      error: error.message,
    );
  }
}
