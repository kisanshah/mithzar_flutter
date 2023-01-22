import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../remote/auth.dart';
import 'auth_repository.dart';

part 'auth_provider.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) =>
    AuthRepositoryImpl(ref.watch(authSourceProvider));
