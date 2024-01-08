import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/features/cart/data/repository/cart_repo_impl.dart';
import 'package:mithzar/features/home/data/repository/home_repo_impl.dart';
import 'package:mithzar/features/home/domain/repository/home_repository.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'section_provider.g.dart';

@Riverpod(dependencies: [homeRepo, cartRepo], keepAlive: true)
class SectionNotifier extends _$SectionNotifier {
  late HomeRepository _repo;

  @override
  State<List<Section>> build() {
    _repo = ref.watch(homeRepoProvider);
    return LoadingState();
  }

  Future<void> fetch() async {
    final sections = await _repo.getSections();
    state = sections.state();
  }
}
