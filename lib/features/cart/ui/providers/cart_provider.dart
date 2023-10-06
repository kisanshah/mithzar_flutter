import 'package:api/api.dart';
import 'package:e_commerce_front_end/features/cart/data/repository/cart_repo_impl.dart';
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
