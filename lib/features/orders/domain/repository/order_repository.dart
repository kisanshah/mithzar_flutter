import 'dart:typed_data';

import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class OrderRepository {
  Future<(List<Order>?, AppError?)> getOrderList({
    PaginationFilter? filter,
    List<String>? status,
  });

  Future<(Order?, AppError?)> getOrderById(String id);
  Future<(CheckoutUrl?, AppError?)> checkout();

  Future<(Uint8List?, AppError?)> downloadInvoice(String id);
}
