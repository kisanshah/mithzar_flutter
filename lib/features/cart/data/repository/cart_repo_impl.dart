import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/core/instances/api_client_provider.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';
import 'package:e_commerce_front_end/features/cart/domain/repository/cart_repository.dart';
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
  Future<(Cart?, AppError?)> add(int id) {
    return _source.addToCart(addCartReq: AddCartReq(productId: id)).toRecord();
  }

  @override
  Future<(List<Cart>?, AppError?)> getCartItems() {
    return _source.getCartItems().toRecord();
  }

  @override
  Future<(Cart?, AppError?)> remove(int id) {
    return _source.removeItem(id: id).toRecord();
  }
}
