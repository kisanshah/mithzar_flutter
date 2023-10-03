import 'package:flutter/material.dart';
import 'package:flutterClient/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/helper/app_error.dart';
import '../../../data/local/shar_pref.dart';
import '../../../extensions/debug.dart';
import '../data/repository/auth_repo_impl.dart';
import 'register_state.dart';

part 'register_provider.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  final nameCtrl = TextEditingController(text: 'Kisan Shah'.ifDebug);
  final emailCtrl =
      TextEditingController(text: 'shahkisan21@gmail.com'.ifDebug);
  final phoneCtrl = TextEditingController(text: '7977547951'.ifDebug);
  final passCtrl = TextEditingController(text: 'Kisan@123'.ifDebug);

  @override
  RegisterState build() {
    ref.onDispose(() {
      nameCtrl.dispose();
      emailCtrl.dispose();
      phoneCtrl.dispose();
      passCtrl.dispose();
    });

    return RegisterState();
  }

  Future<void> sendOtp() async {
    state = state.copyWith(loading: true);
    await Future.delayed(const Duration(seconds: 2));
    state = state.copyWith(
      otpSent: true,
      loading: false,
    );
  }

  Future<void> verifyOtp() async {
    state = state.copyWith(loading: true);
    await Future.delayed(const Duration(seconds: 2));
    state = state.copyWith(
      otpVerified: true,
      loading: false,
    );
    register();
  }

  Future<void> register() async {
    final result = await ref.read(authRepoProvider).register(
          User(
            name: nameCtrl.text,
            email: emailCtrl.text,
            password: passCtrl.text,
            phone: phoneCtrl.text,
          ),
        );
    result.fold(onError, onResult);
  }

  void onResult(Tokens token) {
    state = state.copyWith(
      loading: false,
    );
    ref.read(sharPrefProvider).saveToken(token);
  }

  Future<void> onError(AppError error) async {
    state = state.copyWith(
      loading: false,
      error: error.message,
    );
    await Future.delayed(const Duration(seconds: 3));
    state = state.copyWith(error: '');
  }
}
