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

    // Register new user
    //
    //Future<Tokens> register(User user) async
    test('test register', () async {
      // TODO
    });

    // Sign In
    //
    //Future<Tokens> signIn(User user) async
    test('test signIn', () async {
      // TODO
    });
  });
}
