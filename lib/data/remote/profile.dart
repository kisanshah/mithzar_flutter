import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../ui/shared/providers/dio_provider.dart';
import '../helper/api_path.dart';
import '../model/user.dart';

part 'profile.g.dart';

final profileSourceProvider = Provider<ProfileSource>((ref) {
  return ProfileSource(ref.watch(dioProvider));
});

@RestApi()
abstract class ProfileSource {
  factory ProfileSource(Dio dio) => _ProfileSource(dio);

  @GET(ApiPath.profile)
  Future<User> getCurrentUser();
}
