import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for ProductApi
void main() {
  final instance = Api().getProductApi();

  group(ProductApi, () {
    // Get filtered list.
    //
    //Future<List<Product>> getFiltered({ PaginationFilter filter }) async
    test('test getFiltered', () async {
      // TODO
    });

    // Get product detail.
    //
    //Future<Product> getProductById(int id) async
    test('test getProductById', () async {
      // TODO
    });
  });
}
