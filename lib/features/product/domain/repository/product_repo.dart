import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class ProductRepo {
  Future<(Product?, AppError?)> getProductById(int id);
  Future<(List<Product>?, AppError?)> getFilteredList(PaginationFilter filter);
}
