import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/extensions/string.dart';
import 'package:mithzar/core/helper/app_error.dart';
import 'package:mithzar/core/instances/api_provider.dart';
import 'package:mithzar/core/instances/token_provider.dart';
import 'package:mithzar/src/routes/router/app_router.dart';
import 'package:mithzar/src/routes/router/app_router.gr.dart';
import 'package:mithzar/src/shared/components/app_snack_bar.dart';
import 'package:mithzar/src/shared/providers/router_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  late AuthApi _api;
  late AppRouter _router;

  @override
  Future<void> build() async {
    _api = ref.watch(apiProvider).getAuthApi();
    _router = ref.read(routerProvider);
    listenForError();
  }

  Future<void> sendOtp(String phone) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _api.sendOtp(sendOtpRequest: SendOtpRequest(phone: phone));
      _router.push(OtpRoute(phone: phone));
    });
  }

  Future<void> verify({required String phone, required String otp}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final tokens = await _api
          .verifyOtp(verifyOtpRequest: VerifyOtpRequest(otp: otp, phone: phone))
          .guard<Tokens>();
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
