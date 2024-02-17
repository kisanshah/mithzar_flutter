import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/features/auth/domain/repository/auth_repo.dart';
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
  Future<(Token?, AppError?)> signIn(User user) async {
    return source.signIn(user: user).toRecord();
  }

  @override
  Future<(Token?, AppError?)> generateAccessToken(String? refreshToken) {
    return source
        .refreshToken(token: Token(refreshToken: refreshToken))
        .toRecord();
  }

  @override
  Future<(User?, AppError?)> sendOtp(User user) {
    return source.sendOtp(user: user).toRecord();
  }

  @override
  Future<(Token?, AppError?)> verifyOtp(VerifyOtpRequest body) {
    return source.verifyOtp(verifyOtpRequest: body).toRecord();
  }
}
