import 'dart:convert';

import 'package:api/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/config/pref_path.dart';
import 'package:mithzar/src/shared/providers/shar_pref_provider.dart';
import 'package:secure_shared_preferences/secure_shared_pref.dart';

final sharPrefProvider = Provider<SharPref>((ref) {
  return SharPref(ref.read(secureSharedPredProvider));
});

class SharPref {
  SharPref(this.pref);

  final SecureSharedPref pref;

  Future<void> saveToken(Token token) async {
    await pref.putString(
      PrefPath.token,
      jsonEncode(token.toJson()),
    );
  }

  Future<Token?> getToken() async {
    final encoded = await pref.getString(PrefPath.token) ?? '';
    if (encoded.isEmpty) {
      return null;
    }
    return Token.fromJson(jsonDecode(encoded));
  }

  void clearAll() {
    pref.clearAll();
  }
}
