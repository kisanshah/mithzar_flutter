import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/features/cart/data/repository/cart_repo_impl.dart';
import 'package:mithzar/features/cart/domain/repository/cart_repository.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

@riverpod
class CartItemNotifier extends _$CartItemNotifier {
  late CartRepository _repo;
  @override
  State<Cart> build() {
    _repo = ref.watch(cartRepoProvider);
    return ResultState(data: const Cart());
  }

  Future<void> add(int id) async {
    state = LoadingState();
    final result = await _repo.add(id);
    state = result.state();
  }

  Future<void> remove(int id) async {
    state = LoadingState();
    final result = await _repo.remove(id);
    state = result.state();
  }
}
