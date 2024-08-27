import 'package:api/api.dart';
import 'package:mithzar/src/orders/data/repository/order_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_provider.g.dart';

@riverpod
FutureOr<(List<Order>, List<Order>)> orderList(
  OrderListRef ref,
) {
  final repo = ref.watch(orderRepoProvider);
  return (
    repo.getOrderList(
      status: ['pending', 'processing'],
      filter: PaginationFilter(size: 3),
    ),
    repo.getOrderList(status: ['completed'], filter: PaginationFilter(size: 3)),
  ).wait;
}
