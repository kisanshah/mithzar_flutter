import 'package:api/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/local/shar_pref.dart';
import '../../ui/auth/data/repository/auth_repo_impl.dart';

part 'token_provider.g.dart';

@Riverpod(keepAlive: true)
class TokenNotifier extends _$TokenNotifier {
  @override
  Tokens build() {
    return Tokens();
  }

  Future<void> init() async {
    state = await ref.read(sharPrefProvider).getToken() ?? state;
  }

  void update(Tokens? tokens) {
    state = tokens ?? state;
  }

  Future<String?> refresh() async {
    final token = await ref.read(sharPrefProvider).getToken();
    final result = await ref
        .read(authRepoProvider)
        .generateAccessToken(token?.refreshToken);
    return result.fold((l) => '', (r) {
      state = state.rebuild((token) => token..accessToken = r.accessToken);
      return r.accessToken;
    });
  }
}
