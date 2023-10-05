import 'package:api/api.dart';
import 'package:e_commerce_front_end/features/orders/data/repository/order_repo_impl.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_list_notifier.g.dart';

@Riverpod(dependencies: [orderRepo])
class OrderListNotifier extends _$OrderListNotifier {
  late final repo = ref.read(orderRepoProvider);

  @override
  UserState<List<Order>> build() {
    return UserState(data: []);
  }

  Future<void> fetch() async {
    final result = await repo.getOrderList();
    state = result.fold(
      (err) => state.copyWith(error: err.message, loading: false),
      (res) => state.copyWith(data: res, loading: false),
    );
  }
}
