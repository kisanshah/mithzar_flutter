import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:mithzar/core/extensions/debug.dart';
import 'package:mithzar/data/local/shar_pref.dart';
import 'package:mithzar/features/auth/data/repository/auth_repo_impl.dart';
import 'package:mithzar/features/auth/domain/repository/auth_repo.dart';
import 'package:mithzar/features/auth/ui/providers/signup_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_provider.g.dart';

@riverpod
class SignUpNotifier extends _$SignUpNotifier {
  final nameCtrl = TextEditingController(text: 'Kisan Shah'.ifDebug);
  final emailCtrl = TextEditingController(text: 'kisan@yopmail.com'.ifDebug);
  final phoneCtrl = TextEditingController(
    text: '${DateTime.now().millisecondsSinceEpoch}'.ifDebug,
  );
  final passCtrl = TextEditingController(text: 'Kisan@123'.ifDebug);
  late AuthRepo repo;
  @override
  FutureOr<SignUpState> build() async {
    // ref.onDispose(() {
    //   nameCtrl.dispose();
    //   emailCtrl.dispose();
    //   phoneCtrl.dispose();
    //   passCtrl.dispose();
    // });
    repo = ref.watch(authRepoProvider);
    return SignUpState();
  }

  User get user {
    return User(
      email: emailCtrl.text,
      name: nameCtrl.text,
      phone: phoneCtrl.text,
      password: passCtrl.text,
    );
  }

  Future<void> sendOtp() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await repo.sendOtp(user);
      return Future.value(SignUpState(otpSent: result.message != ''));
    });
  }

  Future<void> verifyOtp(String otp) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final token = await repo.verifyOtp(VerifyOtpRequest(user: user, otp: otp));
      await ref.read(sharPrefProvider).saveToken(token);
      return Future.value(SignUpState(otpSent: token.accessToken != ''));
    });
  }
}
