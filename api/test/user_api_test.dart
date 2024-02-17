import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for UserApi
void main() {
  final instance = Api().getUserApi();

  group(UserApi, () {
    // Get user based on the token
    //
    //Future<User> getUser() async
    test('test getUser', () async {
      // TODO
    });

    // Update user
    //
    //Future<User> updateUser({ User user }) async
    test('test updateUser', () async {
      // TODO
    });
  });
}
