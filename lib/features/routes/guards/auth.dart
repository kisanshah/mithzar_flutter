import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/data/local/shar_pref.dart';
import 'package:mithzar/features/routes/router/app_router.gr.dart';
import 'package:mithzar/features/shared/providers/user_provider.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._ref);

  final Ref _ref;
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final token = await _ref.read(sharPrefProvider).getToken();
    if (token != null && token.accessToken != null) {
      await _ref.read(userNotifierProvider.notifier).fetch();
      resolver.next();
    } else {
      router.push(const SignInRoute());
    }
  }
}
