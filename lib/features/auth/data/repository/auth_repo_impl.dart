import 'package:api/api.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/core/instances/api_client_provider.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';
import 'package:e_commerce_front_end/features/auth/domain/repository/auth_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
          tokens: Tokens(refreshToken: refreshToken),
        )
        .guardFuture<Tokens>();
  }
}
