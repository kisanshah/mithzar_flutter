import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/features/profile/data/repository/profile_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [profileRepo])
class UserNotifier extends _$UserNotifier {
  late final _repo = ref.read(profileRepoProvider);

  @override
  User build() {
    return const User();
  }

  Future<void> fetch() async {
    final result = await _repo.getUser();
    state = result.fold((l) => state, (r) => r);
  }
}
