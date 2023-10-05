import 'package:test/test.dart';
import 'package:api/api.dart';


/// tests for ProfileApi
void main() {
  final instance = Api().getProfileApi();

  group(ProfileApi, () {
    // Get profile based on the token
    //
    //Future<User> userGet() async
    test('test userGet', () async {
      // TODO
    });

  });
}
