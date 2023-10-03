import 'package:dartz/dartz.dart';
import 'package:flutterClient/api.dart';

import '../../../../data/helper/app_error.dart';

abstract class AuthRepo {
  Future<Either<AppError, Tokens>> register(User user);
  Future<Either<AppError, Tokens>> signIn(User user);
}
