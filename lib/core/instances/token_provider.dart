import 'package:api/api.dart';
import 'package:mithzar/core/instances/shar_pref.dart';
import 'package:mithzar/src/auth/data/repository/auth_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_provider.g.dart';

@Riverpod(keepAlive: true)
class TokenNotifier extends _$TokenNotifier {
  late SharPref prefs;

  @override
  Token build() {
    prefs = ref.watch(sharPrefProvider);
    return Token();
  }

  Future<void> init() async {
    state = await prefs.getToken() ?? state;
  }

  void update(Token? tokens) {
    state = tokens ?? state;
  }

  Future<String?> refresh() async {
    final token = await prefs.getToken();
    final result = await ref
        .read(authRepoProvider)
        .generateAccessToken(token?.refreshToken);
    return result.accessToken;
  }
}
