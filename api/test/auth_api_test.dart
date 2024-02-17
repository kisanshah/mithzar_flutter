import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for AuthApi
void main() {
  final instance = Api().getAuthApi();

  group(AuthApi, () {
    // Generate new access token
    //
    //Future<Token> refreshToken(Token token) async
    test('test refreshToken', () async {
      // TODO
    });

    // Register new user & send otp
    //
    //Future<User> sendOtp(User user) async
    test('test sendOtp', () async {
      // TODO
    });

    // Sign In
    //
    //Future<Token> signIn(User user) async
    test('test signIn', () async {
      // TODO
    });

    // Verify OTP
    //
    //Future<Token> verifyOtp(VerifyOtpRequest verifyOtpRequest) async
    test('test verifyOtp', () async {
      // TODO
    });
  });
}
