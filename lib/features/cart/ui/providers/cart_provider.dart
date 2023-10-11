import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/instances/api_client_provider.dart';
import 'package:e_commerce_front_end/features/cart/data/repository/cart_repo_impl.dart';
import 'package:e_commerce_front_end/features/cart/domain/repository/cart_repository.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

@riverpod
class ProductRefresh extends _$ProductRefresh {
  @override
  int build() {
    return 0;
  }

  void refresh() {
    state = state + 1;
  }
}

@riverpod
FutureOr<Success> addToCart(AddToCartRef ref, int id) async {
  final result = await ref.watch(cartRepoProvider).addToCart(id);
  ref.read(productRefreshProvider.notifier).refresh();
  return result.fold(
    (l) => Success((value) => value..success = false),
    (res) => res,
  );
}

@riverpod
class CartNotifier extends _$CartNotifier {
  late CartRepository repo;
  @override
  UserState<List<Cart>> build() {
    repo = ref.watch(cartRepoProvider);

    fetch();
    return UserState(data: []);
  }

  Future<void> fetch() async {
    final result = await repo.getCartItems();
    state = result.fold(
      (err) => state.copyWith(loading: false, error: err.message),
      (res) => state.copyWith(data: res, loading: false),
    );
  }

  Future<void> checkout() async {
    final result = await ref.read(apiClientProvider).getOrderApi().checkout();
  }
}
