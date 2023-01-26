import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_shared_preferences/secure_shared_pref.dart';

import '../../ui/shared/providers/shar_pref_provider.dart';
import '../helper/pref_path.dart';
import '../model/token_res.dart';

final sharPrefProvider = Provider<SharPref>((ref) {
  return SharPref(ref.read(secureSharedPredProvider));
});

class SharPref {
  SharPref(this.pref);

  final SecureSharedPref pref;

  void saveToken(TokenRes token) {
    pref.putString(PrefPath.token, jsonEncode(token));
  }

  Future<TokenRes?> getToken() async {
    final encoded = await pref.getString(PrefPath.token) ?? '';
    if (encoded.isEmpty) {
      return null;
    }
    return TokenRes.fromJson(jsonDecode(encoded));
  }

  void clearAll() {
    pref.clearAll();
  }
}
