import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/debug.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';
import 'package:e_commerce_front_end/data/local/shar_pref.dart';
import 'package:e_commerce_front_end/features/auth/providers/register_state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
    //   UserBuilder(
    //         name: nameCtrl.text,
    //         email: emailCtrl.text,
    //         password: passCtrl.text,
    //         phone: phoneCtrl.text,
    //       );
    // final result = await ref.read(authRepoProvider).register(
    //     ,
    //     );
    // result.fold(onError, onResult);
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
