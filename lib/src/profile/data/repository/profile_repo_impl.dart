import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/src/profile/domain/repository/profile_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_repo_impl.g.dart';

@riverpod
ProfileRepository profileRepo(ProfileRepoRef ref) {
  return ProfileRepoImpl(ref.watch(apiClientProvider).getUserApi());
}

class ProfileRepoImpl implements ProfileRepository {
  ProfileRepoImpl(this.source);

  final UserApi source;

  @override
  Future<User> getUser() {
    return source.getUser().guard<User>();
  }
}
