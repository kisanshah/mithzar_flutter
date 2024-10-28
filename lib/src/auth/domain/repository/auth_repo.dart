import 'package:api/api.dart';

abstract class AuthRepo {
  Future<Tokens> generateAccessToken(String? refreshToken);
  Future<SuccessResponse> sendOtp(SendOtpRequest request);
  Future<Tokens> verifyOtp(VerifyOtpRequest request);
}
