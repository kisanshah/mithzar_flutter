import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class ProductRepo {
  Future<Product> getProductById(int id);
  Future<(List<ProductVariant>?, AppError?)> getVariants(
    PaginationFilter? filter,
  );
  Future<ProductVariant> getVariantByid(int id);
}
