import 'dart:convert';

import 'package:flutterClient/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_shared_preferences/secure_shared_pref.dart';

import '../../ui/shared/providers/shar_pref_provider.dart';
import '../helper/pref_path.dart';

final sharPrefProvider = Provider<SharPref>((ref) {
  return SharPref(ref.read(secureSharedPredProvider));
});

class SharPref {
  SharPref(this.pref);

  final SecureSharedPref pref;

  Future<void> saveToken(Tokens token) async {
    await pref.putString(PrefPath.token, jsonEncode(token));
  }

  Future<Tokens?> getToken() async {
    final encoded = await pref.getString(PrefPath.token) ?? '';
    if (encoded.isEmpty) {
      return null;
    }
    return Tokens.fromJson(jsonDecode(encoded));
  }

  void clearAll() {
    pref.clearAll();
  }
}
