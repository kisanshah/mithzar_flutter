import 'package:api/api.dart';

abstract class ProductRepo {
  Future<Product> getProductById(int id);
  Future<List<ProductVariant>> getVariants(PaginationFilter? filter);
  Future<ProductVariant> getVariantByid(int id);
}
