import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class HomeRepository {
  Future<(List<Section>?, AppError?)> getSections();
}
