import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/src/cart/data/repository/cart_repo_impl.dart';
import 'package:mithzar/src/home/data/repository/home_repo_impl.dart';
import 'package:mithzar/src/home/domain/repository/home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'section_provider.g.dart';

@Riverpod(dependencies: [homeRepo, cartRepo], keepAlive: true)
class SectionNotifier extends _$SectionNotifier {
  late HomeRepository _repo;

  @override
  Future<List<Section>> build() async {
    _repo = ref.watch(homeRepoProvider);
    final sections = await _repo.getSections().guard();
    return sections;
  }

  Future<void> fetch() async {
  }
}
