import 'package:e_commerce_front_end/features/cart/data/repository/cart_repo_impl.dart';
import 'package:e_commerce_front_end/features/home/data/repository/home_repo_impl.dart';
import 'package:e_commerce_front_end/features/home/domain/repository/home_repository.dart';
import 'package:e_commerce_front_end/features/home/ui/providers/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart';

@Riverpod(dependencies: [homeRepo, cartRepo])
class HomeNotifier extends _$HomeNotifier {
  late HomeRepository _repo;

  @override
  HomeState build() {
    _repo = ref.watch(homeRepoProvider);
    fetch();
    return const HomeState();
  }

  Future<void> fetch() async {
    final sections = await _repo.getSections();
    state = sections.fold(
      (err) => state.copyWith(loading: false, error: err.message),
      (res) => state.copyWith(sections: res, loading: false),
    );
  }
}
