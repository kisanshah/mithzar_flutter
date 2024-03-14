import 'dart:typed_data';

import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/features/orders/domain/repository/order_repository.dart';
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
  Future<(List<Order>?, AppError?)> getOrderList({
    PaginationFilter? filter,
    List<String>? status,
  }) {
    return _source
        .getOrderList(
          filter: filter ?? PaginationFilter(),
          status: status ?? [],
        )
        .toRecord();
  }

  @override
  Future<Checkout> checkout() async {
    return _source.checkout().guard();
  }

  @override
  Future<(Order?, AppError?)> getOrderById(int id) {
    return _source.getOrderById(id: id).toRecord();
  }

  @override
  Future<(Uint8List?, AppError?)> downloadInvoice(int id) {
    return _source.downloadInvoice(id: id).toRecord();
  }
}
