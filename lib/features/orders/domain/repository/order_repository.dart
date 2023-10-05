import 'package:api/api.dart';
import 'package:dartz/dartz.dart' show Either;
import 'package:e_commerce_front_end/data/helper/app_error.dart';

abstract class OrderRepository {
  Future<Either<AppError, List<Order>>> getOrderList();
}
