import 'package:api/api.dart';
import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/instances/api_client_provider.dart';
import '../../../../data/helper/app_error.dart';
import '../../../../extensions/future.dart';
import '../../domain/repository/auth_repo.dart';

part 'auth_repo_impl.g.dart';

@riverpod
AuthRepo authRepo(AuthRepoRef ref) {
  return AuthRepoImpl(source: ref.read(apiClientProvider).getAuthApi());
}

class AuthRepoImpl extends AuthRepo {
  AuthRepoImpl({required this.source});

  final AuthApi source;

  @override
  Future<Either<AppError, Tokens>> register(User user) {
    return source.register(user: user).guardFuture();
  }

  @override
  Future<Either<AppError, Tokens>> signIn(User user) async {
    return source.signIn(user: user).guardFuture();
  }

  @override
  Future<Either<AppError, Tokens>> generateAccessToken(String? refreshToken) {
    return source
        .refreshToken(
          tokens: Tokens((tokens) => tokens..refreshToken = refreshToken),
        )
        .guardFuture<Tokens>();
  }
}
