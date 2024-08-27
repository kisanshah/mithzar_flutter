import 'package:api/api.dart';
import 'package:mithzar/src/home/data/repository/home_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_provider.g.dart';

@riverpod
Future<List<Banner>> bannerList(BannerListRef ref) {
  return ref.watch(homeRepoProvider).getBanners();
}
