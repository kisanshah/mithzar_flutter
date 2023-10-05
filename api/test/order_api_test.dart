import 'package:test/test.dart';
import 'package:api/api.dart';


/// tests for OrderApi
void main() {
  final instance = Api().getOrderApi();

  group(OrderApi, () {
    // Returns a list of products.
    //
    //Future orderCheckoutGet() async
    test('test orderCheckoutGet', () async {
      // TODO
    });

    // Returns a list of orders.
    //
    //Future orderListGet() async
    test('test orderListGet', () async {
      // TODO
    });

  });
}
