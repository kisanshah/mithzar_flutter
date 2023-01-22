import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/helper/app_error.dart';
import '../../../data/model/sign_in_req.dart';
import '../../../data/model/token_res.dart';
import '../../../data/repository/auth_provider.dart';
import 'sign_in_state.dart';

part 'sign_in_provider.g.dart';

@riverpod
class SignInNotifier extends _$SignInNotifier {
  @override
  SignInState build() {
    return SignInState();
  }

  Future<void> signIn(String email, String password) async {
    state = state.copyWith(loading: true);
    final body = SignInReq(email: email, password: password);
    final result = await ref.read(authRepositoryProvider).signIn(body);
    result.fold(onError, onResult);
  }

  void onResult(TokenRes token) {
    state = state.copyWith(
      loading: false,
    );
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
