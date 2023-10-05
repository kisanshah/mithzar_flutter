import 'package:dartz/dartz.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';

abstract class OrderRepository {
  Future<Either<AppError, List<Order>>> getOrderList();
}
