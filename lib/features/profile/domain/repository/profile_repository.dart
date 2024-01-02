import 'package:api/api.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';

abstract class ProfileRepository {
  Future<(User?, AppError?)> getUser();
}
