import 'package:api/api.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';

abstract class ProductRepo {
  Future<(Product?, AppError?)> getProductById(int id);
  Future<(List<Product>?, AppError?)> getFilteredList(PaginationFilter filter);
}
