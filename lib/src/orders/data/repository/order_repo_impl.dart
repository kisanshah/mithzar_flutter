import 'dart:typed_data';

import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/src/orders/domain/repository/order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_repo_impl.g.dart';

@Riverpod(keepAlive: true)
OrderRepository orderRepo(OrderRepoRef ref) {
  return OrderRepoImpl(ref.watch(apiClientProvider).getOrderApi());
}

class OrderRepoImpl implements OrderRepository {
  OrderRepoImpl(this._source);

  final OrderApi _source;

  @override
  Future<List<Order>> getOrderList({
    PaginationFilter? filter,
    List<String>? status,
  }) {
    return _source
        .getOrderList(
          status: status ?? [],
          page: filter?.page,
          size: filter?.size,
        )
        .guard();
  }

  @override
  Future<Checkout> checkout() async {
    return _source.checkout().guard();
  }

  @override
  Future<Order> getOrderById(int id) {
    return _source.getOrderById(id: id).guard();
  }

  @override
  Future<Uint8List> downloadInvoice(int id) {
    return _source.downloadInvoice(id: id).guard();
  }
}
