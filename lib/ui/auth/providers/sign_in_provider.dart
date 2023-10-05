import 'package:api/api.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';
import 'package:e_commerce_front_end/data/local/shar_pref.dart';
import 'package:e_commerce_front_end/ui/auth/data/repository/auth_repo_impl.dart';
import 'package:e_commerce_front_end/ui/auth/providers/sign_in_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_provider.g.dart';

@riverpod
class SignInNotifier extends _$SignInNotifier {
  @override
  SignInState build() {
    return SignInState();
  }

  Future<void> signIn(String email, String password) async {
    state = state.copyWith(loading: true);
    final body = User(
      (user) => user
        ..email = email
        ..password = password,
    );
    final result = await ref.read(authRepoProvider).signIn(body);
    result.fold(onError, onResult);
  }

  void onResult(Tokens token) {
    state = state.copyWith(
      loading: false,
      success: token.refreshToken != '',
    );
    ref.read(sharPrefProvider).saveToken(token);
  }

  Future<void> onError(AppError error) async {
    state = state.copyWith(
      loading: false,
      error: error.message,
    );
    await Future.delayed(const Duration(seconds: 3));
    state = state.copyWith(error: '');
  }
}
