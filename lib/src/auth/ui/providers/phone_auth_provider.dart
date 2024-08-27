import 'dart:io';

import 'package:api/api.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mithzar/core/instances/token_provider.dart';
import 'package:mithzar/src/auth/data/repository/auth_repo_impl.dart';
import 'package:mithzar/src/auth/domain/repository/auth_repo.dart';
import 'package:mithzar/src/routes/router/app_router.dart';
import 'package:mithzar/src/routes/router/app_router.gr.dart';
import 'package:mithzar/src/shared/providers/router_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'phone_auth_provider.g.dart';

@riverpod
class PhoneAuth extends _$PhoneAuth {
  late AuthRepo _repo;
  late AppRouter _router;

  @override
  Future<void> build() async {
    _repo = ref.watch(authRepoProvider);
    _router = ref.read(routerProvider);
  }

  Future<void> sendOtp(String phone) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _repo.sendOtp(
        '+91$phone',
        codeSent: (String verificationId, int? forceResendingToken) {
          _router.push(OtpRoute(verificationId: verificationId));
        },
      );
    });
  }

  Future<void> verify({
    required String otp,
    required String verificationId,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      await _repo.verifyOtp(credential);
      final firebaseToken =
          await FirebaseAuth.instance.currentUser?.getIdToken();
      final token = await _repo.singInWihPhone(
        SignInWithPhoneRequest(
          platform: Platform.isAndroid
              ? SignInWithPhoneRequestPlatformEnum.ANDROID
              : SignInWithPhoneRequestPlatformEnum.IOS,
          token: firebaseToken,
        ),
      );
      ref.read(tokenProvider.notifier).update(token);
      _router.replaceAll([const MainRoute()]);
    });
  }
}
