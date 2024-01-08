import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class ProfileRepository {
  Future<(User?, AppError?)> getUser();
}
