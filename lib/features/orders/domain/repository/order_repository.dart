import 'package:api/api.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';

abstract class OrderRepository {
  Future<(List<Order>?, AppError?)> getOrderList();
  Future<(CheckoutUrl?, AppError?)> checkout();
}
