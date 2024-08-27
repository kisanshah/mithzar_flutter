import 'package:api/api.dart';

abstract class HomeRepository {
  Future<List<Section>> getSections();
  Future<List<Banner>> getBanners();
}
