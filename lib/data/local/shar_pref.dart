import 'dart:convert';

import 'package:api/api.dart';
import 'package:e_commerce_front_end/data/helper/pref_path.dart';
import 'package:e_commerce_front_end/ui/shared/providers/shar_pref_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_shared_preferences/secure_shared_pref.dart';

final sharPrefProvider = Provider<SharPref>((ref) {
  return SharPref(ref.read(secureSharedPredProvider));
});

class SharPref {
  SharPref(this.pref);

  final SecureSharedPref pref;

  Future<void> saveToken(Tokens token) async {
    await pref.putString(
      PrefPath.token,
      jsonEncode(serializers.toJson(Tokens.serializer, token)),
    );
  }

  Future<Tokens?> getToken() async {
    final encoded = await pref.getString(PrefPath.token) ?? '';
    if (encoded.isEmpty) {
      return null;
    }
    return serializers.fromJson(Tokens.serializer, jsonDecode(encoded));
  }

  void clearAll() {
    pref.clearAll();
  }
}
