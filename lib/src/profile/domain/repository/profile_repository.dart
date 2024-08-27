import 'package:api/api.dart';

abstract class ProfileRepository {
  Future<User> getUser();
}
