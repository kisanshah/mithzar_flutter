import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../remote/profile.dart';
import 'profile_repository.dart';

part 'profile_provider.g.dart';

@riverpod
ProfileRepository profileRepository(ProfileRepositoryRef ref) =>
    ProfileRepositoryImpl(ref.watch(profileSourceProvider));
