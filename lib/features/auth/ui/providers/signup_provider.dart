import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:mithzar/core/extensions/debug.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/data/local/shar_pref.dart';
import 'package:mithzar/features/auth/data/repository/auth_repo_impl.dart';
import 'package:mithzar/features/auth/domain/repository/auth_repo.dart';
import 'package:mithzar/features/auth/ui/providers/signup_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_provider.g.dart';

@riverpod
class SignUpNotifier extends _$SignUpNotifier {
  final nameCtrl = TextEditingController(text: 'Kisan Shah'.ifDebug);
  final emailCtrl = TextEditingController(
    text: 'kisan+${DateTime.now().millisecondsSinceEpoch}@yopmail.com'.ifDebug,
  );
  final phoneCtrl = TextEditingController(
    text: '${DateTime.now().millisecondsSinceEpoch}'.ifDebug,
  );
  final passCtrl = TextEditingController(text: 'Kisan@123'.ifDebug);
  late AuthRepo repo;
  @override
  SignUpState build() {
    // ref.onDispose(() {
    //   nameCtrl.dispose();
    //   emailCtrl.dispose();
    //   phoneCtrl.dispose();
    //   passCtrl.dispose();
    // });
    repo = ref.watch(authRepoProvider);
    return SignUpState();
  }

  Future<void> sendOtp() async {
    state = state.copyWith(loading: true);
    final user = User(
      email: emailCtrl.text,
      name: nameCtrl.text,
      phone: phoneCtrl.text,
      password: passCtrl.text,
    );
    final result = await repo.sendOtp(user);
    state = result.fold(
      (l) => state.copyWith(loading: false, error: l.message),
      (r) => state.copyWith(loading: false, otpSent: true),
    );
  }

  Future<void> verifyOtp() async {
    state = state.copyWith(loading: true);
    // repo.verifyOtp(body);
  }

  void onResult(Token token) {
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
