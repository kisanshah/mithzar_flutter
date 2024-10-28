import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for AuthApi
void main() {
  final instance = Api().getAuthApi();

  group(AuthApi, () {
    // Generate new access token using refresh token
    //
    //Future<Tokens> refreshToken(RefreshTokenRequest refreshTokenRequest) async
    test('test refreshToken', () async {
      // TODO
    });

    // Send Otp
    //
    //Future<SuccessResponse> sendOtp(SendOtpRequest sendOtpRequest) async
    test('test sendOtp', () async {
      // TODO
    });

    // Verify Otp
    //
    //Future<Tokens> verifyOtp(VerifyOtpRequest verifyOtpRequest) async
    test('test verifyOtp', () async {
      // TODO
    });
  });
}
