import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/app.dart';
import 'package:mithzar/features/shared/providers/shar_pref_provider.dart';
import 'package:secure_shared_preferences/secure_shared_pref.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SecureSharedPref.getInstance();
  runApp(
    ProviderScope(
      overrides: [secureSharedPredProvider.overrideWithValue(pref)],
      child: const App(),
    ),
  );
}
