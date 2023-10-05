import 'package:api/api.dart';
import 'package:e_commerce_front_end/features/home/data/repository/home_repo_impl.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart';

@Riverpod(dependencies: [homeRepo])
class HomeNotifier extends _$HomeNotifier {
  late final _repo = ref.read(homeRepoProvider);
  late final _cartrepo = ref.read(homeRepoProvider);

  @override
  UserState<List<Product>> build() {
    return UserState(data: []);
  }

  Future<void> fetch() async {
    final result = await _repo.getProducts();
    state = result.fold(
      (err) => state.copyWith(loading: false, error: err.message),
      (res) => state.copyWith(data: res),
    );
  }

  Future<void> addToCart() async {
    // final result = await _repo.();
    // state = result.fold(
    //   (err) => state.copyWith(loading: false, error: err.message),
    //   (res) => state.copyWith(data: res),
    // );
  }
}
