import 'package:api/api.dart';
import 'package:e_commerce_front_end/data/local/shar_pref.dart';
import 'package:e_commerce_front_end/features/auth/data/repository/auth_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_provider.g.dart';

@Riverpod(keepAlive: true)
class TokenNotifier extends _$TokenNotifier {
  late SharPref prefs;

  @override
  Tokens build() {
    prefs = ref.watch(sharPrefProvider);
    return Tokens();
  }

  Future<void> init() async {
    state = await prefs.getToken() ?? state;
  }

  void update(Tokens? tokens) {
    state = tokens ?? state;
  }

  Future<String?> refresh() async {
    final token = await prefs.getToken();
    final result = await ref
        .read(authRepoProvider)
        .generateAccessToken(token?.refreshToken);
    return result.fold((l) => '', (res) async {
      state = state.rebuild((token) => token..accessToken = res.accessToken);
      await prefs.saveToken(res);
      return res.accessToken;
    });
  }
}
