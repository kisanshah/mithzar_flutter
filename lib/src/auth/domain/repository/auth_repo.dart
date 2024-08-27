import 'package:api/api.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<Token> generateAccessToken(String? refreshToken);
  Future<void> sendOtp(
    String phone, {
    required PhoneCodeSent codeSent,
  });
  Future<UserCredential> verifyOtp(AuthCredential credentials);
  Future<Token> singInWihPhone(SignInWithPhoneRequest body);
}
