import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for ProductApi
void main() {
  final instance = Api().getProductApi();

  group(ProductApi, () {
    // Get product detail
    //
    //Future<Product> getProductById(int id) async
    test('test getProductById', () async {
      // TODO
    });

    // Get variant detail
    //
    //Future<ProductVariant> getVariantById(int id) async
    test('test getVariantById', () async {
      // TODO
    });

    // Get variant list paginated
    //
    //Future<List<ProductVariant>> getVariants(PaginationFilter paginationFilter) async
    test('test getVariants', () async {
      // TODO
    });
  });
}
