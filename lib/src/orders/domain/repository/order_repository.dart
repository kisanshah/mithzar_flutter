import 'dart:typed_data';

import 'package:api/api.dart';

abstract class OrderRepository {
  Future<List<Order>> getOrderList({
    PaginationFilter? filter,
    List<String>? status,
  });
  Future<Order> getOrderById(int id);
  Future<Checkout> checkout();
  Future<Uint8List> downloadInvoice(int id);
}
