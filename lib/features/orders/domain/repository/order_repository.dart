import 'dart:typed_data';

import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class OrderRepository {
  Future<(List<Order>?, AppError?)> getOrderList({
    PaginationFilter? filter,
    List<String>? status,
  });

  Future<(Order?, AppError?)> getOrderById(int id);
  Future<(Checkout?, AppError?)> checkout();

  Future<(Uint8List?, AppError?)> downloadInvoice(int id);
}
