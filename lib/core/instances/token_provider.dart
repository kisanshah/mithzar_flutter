import 'package:api/api.dart' as api;
import 'package:mithzar/core/instances/shar_pref.dart';
import 'package:mithzar/src/auth/data/repository/auth_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_provider.g.dart';

@Riverpod(keepAlive: true)
class Token extends _$Token {
  late SharPref prefs;

  @override
  api.Tokens build() {
    prefs = ref.watch(sharPrefProvider);
    return api.Tokens();
  }

  Future<void> init() async {
    state = await prefs.getToken() ?? state;
  }

  void update(api.Tokens? tokens) {
    if (tokens == null) {
      return;
    }
    state = tokens;
    prefs.saveToken(tokens);
  }

  Future<String?> refresh() async {
    final token = await prefs.getToken();
    final result = await ref
        .read(authRepoProvider)
        .generateAccessToken(token?.refreshToken);
    return result.accessToken;
  }
}
