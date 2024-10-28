import 'package:api/api.dart' as api;
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_provider.dart';
import 'package:mithzar/core/instances/shar_pref.dart';
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
        .read(apiProvider)
        .getAuthApi()
        .refreshToken(
          refreshTokenRequest:
              api.RefreshTokenRequest(refreshToken: token?.refreshToken),
        )
        .guard<api.Tokens>();
    update(result);
    return result.accessToken;
  }
}
