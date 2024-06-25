import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/features/cart/domain/repository/cart_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_repo_impl.g.dart';

@riverpod
CartRepository cartRepo(CartRepoRef ref) {
  return CartRepoImpl(ref.watch(apiClientProvider).getCartApi());
}

class CartRepoImpl implements CartRepository {
  CartRepoImpl(this._source);

  final CartApi _source;

  @override
  Future<Cart> add(int variantId, int skuId) {
    return _source
        .addToCart(
          addToCartRequest:
              AddToCartRequest(variantId: variantId, skuId: skuId),
        )
        .guard();
  }

  @override
  Future<List<Cart>> getCartItems() {
    return _source.getCartItems().guard();
  }

  @override
  Future<Cart> remove(int id) {
    return _source.removeItem(id: id).guard();
  }

  @override
  Future<CartAmountBreakdown> amountBreakdown() {
    return _source.amountBreakdown().guard();
  }
}
