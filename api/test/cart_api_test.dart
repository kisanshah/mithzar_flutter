import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for CartApi
void main() {
  final instance = Api().getCartApi();

  group(CartApi, () {
    // add product to user's cart
    //
    //Future<Success> addToCart({ AddCartReq addCartReq }) async
    test('test addToCart', () async {
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
    //Future<Success> removeAllItem({ List<int> ids }) async
    test('test removeAllItem', () async {
      // TODO
    });

    // removes the specified cart item
    //
    //Future<Success> removeItem({ IdReq id }) async
    test('test removeItem', () async {
      // TODO
    });
  });
}
