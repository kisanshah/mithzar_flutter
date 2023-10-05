import 'package:api/api.dart';
import 'package:dartz/dartz.dart';

import '../../../../data/helper/app_error.dart';

abstract class AuthRepo {
  Future<Either<AppError, Tokens>> register(User user);
  Future<Either<AppError, Tokens>> signIn(User user);
  Future<Either<AppError, Tokens>> generateAccessToken(String? refreshToken);
}
