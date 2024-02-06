import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/features/orders/data/repository/order_repo_impl.dart';
import 'package:mithzar/features/orders/domain/repository/order_repository.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recent_order_provider.g.dart';

@Riverpod(keepAlive: true)
class RecentOrderNotifier extends _$RecentOrderNotifier {
  late OrderRepository _repo;

  @override
  State<List<Order>> build() {
    _repo = ref.watch(orderRepoProvider);
    return LoadingState();
  }

  Future<void> fetch() async {
    final orders = await _repo.getOrderList(
      status: ['pending', 'processing'],
    );
    state = orders.state();
  }
}
