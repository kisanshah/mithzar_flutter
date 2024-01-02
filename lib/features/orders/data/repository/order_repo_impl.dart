import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/core/instances/api_client_provider.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';
import 'package:e_commerce_front_end/features/orders/domain/repository/order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_repo_impl.g.dart';

@riverpod
OrderRepository orderRepo(OrderRepoRef ref) {
  return OrderRepoImpl(ref.watch(apiClientProvider).getOrderApi());
}

class OrderRepoImpl implements OrderRepository {
  OrderRepoImpl(this._source);

  final OrderApi _source;

  @override
  Future<(List<Order>?, AppError?)> getOrderList() {
    return _source.getOrderList().toRecord();
  }

  @override
  Future<(CheckoutUrl?, AppError?)> checkout() async {
    return _source.checkout().toRecord<CheckoutUrl>();
  }
}
