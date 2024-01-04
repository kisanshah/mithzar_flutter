import 'package:api/api.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';

abstract class OrderRepository {
  Future<(List<Order>?, AppError?)> getOrderList({
    PaginationFilter? filter,
    List<String>? status,
  });

  Future<(Order?, AppError?)> getOrderById(String id);
  Future<(CheckoutUrl?, AppError?)> checkout();
}
