import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class AuthRepo {
  Future<(Token?, AppError?)> signIn(User user);
  Future<(User?, AppError?)> sendOtp(User user);
  Future<(Token?, AppError?)> verifyOtp(VerifyOtpRequest body);
  Future<(Token?, AppError?)> generateAccessToken(String? refreshToken);
}
