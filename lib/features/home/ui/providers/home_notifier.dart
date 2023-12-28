import 'package:api/api.dart';
import 'package:e_commerce_front_end/features/cart/data/repository/cart_repo_impl.dart';
import 'package:e_commerce_front_end/features/cart/domain/repository/cart_repository.dart';
import 'package:e_commerce_front_end/features/cart/ui/providers/cart_provider.dart';
import 'package:e_commerce_front_end/features/home/data/repository/home_repo_impl.dart';
import 'package:e_commerce_front_end/features/home/domain/repository/home_repository.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart';

@Riverpod(dependencies: [homeRepo, cartRepo])
class HomeNotifier extends _$HomeNotifier {
  late HomeRepository _repo;
  late CartRepository _cartrepo;

  @override
  UserState<List<Product>> build() {
    ref.watch(productRefreshProvider);
    //Repository
    _repo = ref.watch(homeRepoProvider);
    _cartrepo = ref.read(cartRepoProvider);

    //Get products
    fetch();
    return UserState(data: []);
  }

  Future<void> fetch() async {
    // final result = await _repo.getProducts();
    // state = result.fold(
    //   (err) => state.copyWith(loading: false, error: err.message),
    //   (res) => state.copyWith(data: res),
    // );
  }

  Future<void> addToCart(int id) async {
    await _cartrepo.addToCart(id);
  }
}
