import 'package:api/api.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
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
  final _auth = FirebaseAuth.instance;

  @override
  Future<Token> generateAccessToken(String? refreshToken) {
    return source
        .refreshToken(token: Token(refreshToken: refreshToken))
        .guard();
  }

  @override
  Future<void> sendOtp(
    String phone, {
    required PhoneCodeSent codeSent,
  }) async {
    _auth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (phoneAuthCredential) {},
      verificationFailed: (FirebaseAuthException error) {
        throw error;
      },
      codeSent: codeSent,
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  Future<UserCredential> verifyOtp(AuthCredential credentials) {
    return _auth.signInWithCredential(credentials);
  }
  
  @override
  Future<Token> singInWihPhone(SignInWithPhoneRequest body) {
    return source.signInWithPhone(signInWithPhoneRequest: body).guard<Token>();
  }
}
