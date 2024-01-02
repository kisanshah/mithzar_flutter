import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/features/orders/data/repository/order_repo_impl.dart';
import 'package:e_commerce_front_end/features/orders/domain/repository/order_repository.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_list_notifier.g.dart';

@Riverpod(dependencies: [orderRepo])
class OrderListNotifier extends _$OrderListNotifier {
  late OrderRepository _repo;

  @override
  State<List<Order>> build() {
    _repo = ref.watch(orderRepoProvider);
    return LoadingState();
  }

  Future<void> fetch() async {
    final result = await _repo.getOrderList();
    state = result.state();
  }
}
