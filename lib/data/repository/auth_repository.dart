import 'package:dartz/dartz.dart';

import '../../extensions/future.dart';
import '../helper/app_error.dart';
import '../model/register_req.dart';
import '../model/sign_in_req.dart';
import '../model/token_res.dart';
import '../remote/auth.dart';

abstract class AuthRepository {
  Future<Either<AppError, TokenRes>> signIn(SignInReq req);
  Future<Either<AppError, TokenRes>> register(RegisterReq req);
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.authSource);

  final AuthSource authSource;

  @override
  Future<Either<AppError, TokenRes>> signIn(SignInReq req) async {
    return authSource.signIn(req).guardFuture<TokenRes>();
  }

  @override
  Future<Either<AppError, TokenRes>> register(RegisterReq req) async {
    return authSource.register(req).guardFuture<TokenRes>();
  }
}
