import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for CartApi
void main() {
  final instance = Api().getCartApi();

  group(CartApi, () {
    // add product to user cart
    //
    //Future<Cart> addToCart({ AddToCartRequest addToCartRequest }) async
    test('test addToCart', () async {
      // TODO
    });

    // returns amount breakdown of cart
    //
    //Future<CartAmountBreakdown> amountBreakdown() async
    test('test amountBreakdown', () async {
      // TODO
    });

    // returns list of cart items
    //
    //Future<List<Cart>> getCartItems() async
    test('test getCartItems', () async {
      // TODO
    });

    // removes the specified cart item
    //
    //Future<Cart> removeItem(num id) async
    test('test removeItem', () async {
      // TODO
    });
  });
}
