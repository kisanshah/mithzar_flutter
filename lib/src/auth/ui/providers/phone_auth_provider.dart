import 'package:api/api.dart';
import 'package:mithzar/core/extensions/string.dart';
import 'package:mithzar/core/helper/app_error.dart';
import 'package:mithzar/core/instances/token_provider.dart';
import 'package:mithzar/src/auth/data/repository/auth_repo_impl.dart';
import 'package:mithzar/src/auth/domain/repository/auth_repo.dart';
import 'package:mithzar/src/routes/router/app_router.dart';
import 'package:mithzar/src/routes/router/app_router.gr.dart';
import 'package:mithzar/src/shared/components/app_snack_bar.dart';
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
    listenForError();
  }

  Future<void> sendOtp(String phone) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _repo.sendOtp(SendOtpRequest(phone: phone));
    });
  }

  Future<void> verify(String otp) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final tokens =
          await _repo.verifyOtp(VerifyOtpRequest(otp: otp, phone: ''));

      ref.read(tokenProvider.notifier).update(tokens);
      _router.replaceAll([const MainRoute()]);
    });
  }

  void listenForError() {
    ref.listenSelf(
      (previous, next) {
        if (!next.isLoading && next.hasError && next.error is AppError) {
          (next.error! as AppError).message.toToast(type: SnackBarType.error);
        }
      },
    );
  }
}
