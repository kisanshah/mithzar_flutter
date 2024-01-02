import 'package:api/api.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';

abstract class AuthRepo {
  Future<(Tokens?, AppError?)> signIn(User user);
  Future<(ApiRes?, AppError?)> sendOtp(User user);
  Future<(Tokens?, AppError?)> verifyOtp(VerifyOtpReq body);
  Future<(Tokens?, AppError?)> generateAccessToken(String? refreshToken);
}
