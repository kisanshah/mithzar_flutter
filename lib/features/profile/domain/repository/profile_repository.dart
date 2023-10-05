import 'package:api/api.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';

abstract class ProfileRepository {
  Future<Either<AppError, User>> getUser();
}
