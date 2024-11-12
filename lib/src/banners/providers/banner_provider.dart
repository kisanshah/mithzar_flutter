import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_provider.g.dart';

@riverpod
Future<List<Banner>> banners(BannersRef ref) {
  final api = ref.read(apiProvider).getBannerApi();
  return api.getActiveBanners().guard();
}
