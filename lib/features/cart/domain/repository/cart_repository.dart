import 'package:api/api.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';

abstract class CartRepository {
  Future<Either<AppError, List<Cart>>> getCartItems();
  Future<Either<AppError, Success>> addToCart(int id);
}
