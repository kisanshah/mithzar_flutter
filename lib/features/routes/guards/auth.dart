import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/data/local/shar_pref.dart';
import 'package:e_commerce_front_end/features/routes/router/app_router.gr.dart';
import 'package:e_commerce_front_end/features/shared/providers/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._ref);

  final Ref _ref;
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final token = await _ref.read(sharPrefProvider).getToken();
    if (token != null) {
      await _ref.read(userNotifierProvider.notifier).fetch();
      resolver.next();
    } else {
      router.push(const SignInRoute());
    }
  }
}
