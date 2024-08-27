import 'package:api/api.dart';

abstract class CartRepository {
  Future<List<Cart>> getCartItems();
  Future<Cart> add(int variantId, int skuId);
  Future<Cart> remove(int id);
  Future<CartAmountBreakdown> amountBreakdown();
}
