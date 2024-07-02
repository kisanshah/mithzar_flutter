import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/features/home/domain/repository/home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repo_impl.g.dart';

@Riverpod(keepAlive: true)
HomeRepository homeRepo(HomeRepoRef ref) {
  final api = ref.watch(apiClientProvider);
  return HomeRepoImpl(api.getSectionApi(), api.getBannerApi());
}

class HomeRepoImpl implements HomeRepository {
  HomeRepoImpl(this._source, this._bannerSource);

  final SectionApi _source;
  final BannerApi _bannerSource;

  @override
  Future<(List<Section>?, AppError?)> getSections() {
    return _source.getSections().toRecord();
  }

  @override
  Future<List<Banner>> getBanners() {
    return _bannerSource.getActiveBanners().guard();
  }
}
