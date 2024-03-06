import 'package:api/api.dart';

abstract class AuthRepo {
  Future<Token> signIn(User user);
  Future<Message> sendOtp(User user);
  Future<Token> verifyOtp(VerifyOtpRequest body);
  Future<Token> generateAccessToken(String? refreshToken);
}
