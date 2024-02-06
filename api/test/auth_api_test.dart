import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for AuthApi
void main() {
  final instance = Api().getAuthApi();

  group(AuthApi, () {
    // Generate new access token
    //
    //Future<Tokens> refreshToken(Tokens tokens) async
    test('test refreshToken', () async {
      // TODO
    });

    // Register new user & send otp
    //
    //Future<ApiRes> sendOtp(User user) async
    test('test sendOtp', () async {
      // TODO
    });

    // Sign In
    //
    //Future<Tokens> signIn(User user) async
    test('test signIn', () async {
      // TODO
    });

    // Verify OTP
    //
    //Future<Tokens> verifyOtp(VerifyOtpReq verifyOtpReq) async
    test('test verifyOtp', () async {
      // TODO
    });
  });
}
