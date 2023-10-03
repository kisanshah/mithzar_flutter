import 'package:dartz/dartz.dart';
import 'package:flutterClient/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/api_client_provider.dart';
import '../../../../data/helper/app_error.dart';
import '../../../../extensions/future.dart';
import '../../domain/repository/auth_repo.dart';

part 'auth_repo_impl.g.dart';

@riverpod
AuthRepo authRepo(AuthRepoRef ref) {
  return AuthRepoImpl(source: AuthApi(ref.watch(apiClientProvider)));
}

class AuthRepoImpl extends AuthRepo {
  AuthRepoImpl({required this.source});

  final AuthApi source;

  @override
  Future<Either<AppError, Tokens>> register(User user) {
    return source.register(user).guardFuture();
  }

  @override
  Future<Either<AppError, Tokens>> signIn(User user) {
    return source.signIn(user).guardFuture();
  }
}
