import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/core/instances/api_client_provider.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';
import 'package:e_commerce_front_end/features/home/domain/repository/home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repo_impl.g.dart';

@Riverpod(keepAlive: true)
HomeRepository homeRepo(HomeRepoRef ref) {
  return HomeRepoImpl(ref.watch(apiClientProvider).getSectionApi());
}

class HomeRepoImpl implements HomeRepository {
  HomeRepoImpl(this._source);

  final SectionApi _source;

  @override
  Future<(List<Section>?, AppError?)> getSections() {
    return _source.getSections().toRecord();
  }
}
