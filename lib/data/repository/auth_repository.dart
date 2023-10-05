import 'package:api/api.dart';
import 'package:dartz/dartz.dart';

import '../../extensions/future.dart';
import '../helper/app_error.dart';
import '../model/token_res.dart';

abstract class AuthRepository {
  Future<Either<AppError, TokenRes>> signIn(User req);
  Future<Either<AppError, TokenRes>> register(User req);
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.authSource);

  final AuthApi authSource;

  @override
  Future<Either<AppError, TokenRes>> signIn(User req) async {
    return authSource.signIn(user: req).guardFuture<TokenRes>();
  }

  @override
  Future<Either<AppError, TokenRes>> register(User req) async {
    return authSource.register(user: req).guardFuture<TokenRes>();
  }
}
