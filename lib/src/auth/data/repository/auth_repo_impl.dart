import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/src/auth/domain/repository/auth_repo.dart';
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
  Future<Tokens> generateAccessToken(String? refreshToken) {
    return source
        .refreshToken(
            refreshTokenRequest:
                RefreshTokenRequest(refreshToken: refreshToken),)
        .guard();
  }

  @override
  Future<SuccessResponse> sendOtp(SendOtpRequest request) async {
    return source.sendOtp(sendOtpRequest: request).guard<SuccessResponse>();
  }

  @override
  Future<Tokens> verifyOtp(VerifyOtpRequest request) {
    return source.verifyOtp(verifyOtpRequest: request).guard<Tokens>();
  }
}
