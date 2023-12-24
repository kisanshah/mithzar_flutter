import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for OrderApi
void main() {
  final instance = Api().getOrderApi();

  group(OrderApi, () {
    // Returns a list of products.
    //
    //Future<CheckoutUrl> checkout() async
    test('test checkout', () async {
      // TODO
    });

    // Returns a list of orders.
    //
    //Future<List<Order>> getOrderList() async
    test('test getOrderList', () async {
      // TODO
    });
  });
}
