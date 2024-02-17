import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for OrderApi
void main() {
  final instance = Api().getOrderApi();

  group(OrderApi, () {
    // Returns a list of products
    //
    //Future<Checkout> checkout() async
    test('test checkout', () async {
      // TODO
    });

    //Future<MultipartFile> downloadInvoice(num id) async
    test('test downloadInvoice', () async {
      // TODO
    });

    // Get user order by id
    //
    //Future<Order> getOrderById(num id) async
    test('test getOrderById', () async {
      // TODO
    });

    // Returns a list of orders
    //
    //Future<List<Order>> getOrderList(PaginationFilter filter, List<String> status) async
    test('test getOrderList', () async {
      // TODO
    });
  });
}
