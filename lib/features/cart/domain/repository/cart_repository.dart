import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class CartRepository {
  Future<(List<Cart>?, AppError?)> getCartItems();
  Future<Cart> add(int variantId, int skuId);
  Future<(Cart?, AppError?)> remove(int id);
}
