import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for BannerApi
void main() {
  final instance = Api().getBannerApi();

  group(BannerApi, () {
    // Get active banners
    //
    //Future<List<Banner>> getActiveBanners() async
    test('test getActiveBanners', () async {
      // TODO
    });
  });
}
