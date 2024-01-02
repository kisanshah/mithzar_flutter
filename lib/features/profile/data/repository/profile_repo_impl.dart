import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/core/instances/api_client_provider.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';
import 'package:e_commerce_front_end/features/profile/domain/repository/profile_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_repo_impl.g.dart';

@riverpod
ProfileRepository profileRepo(ProfileRepoRef ref) {
  return ProfileRepoImpl(ref.watch(apiClientProvider).getProfileApi());
}

class ProfileRepoImpl implements ProfileRepository {
  ProfileRepoImpl(this.source);

  final ProfileApi source;

  @override
  Future<(User?, AppError?)> getUser() {
    return source.getUserByToken().toRecord();
  }
}
