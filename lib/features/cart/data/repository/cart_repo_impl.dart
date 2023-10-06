import 'package:api/api.dart';
import 'package:dartz/dartz.dart';
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
  Future<Either<AppError, Success>> addToCart(int id) {
    return _source
        .addToCart(addCartReq: AddCartReq((value) => value.productId = id))
        .guardFuture();
  }

  @override
  Future<Either<AppError, List<Cart>>> getCartItems() {
    return _source.getCartItems().guardFuture();
  }
}
