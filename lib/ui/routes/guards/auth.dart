import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/local/shar_pref.dart';
import '../../shared/providers/token_provider.dart';
import '../router/app_router.gr.dart';

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
      _ref.read(tokenProvider.notifier).update((state) => token);
      resolver.next();
    } else {
      router.push(
        const SignInRoute(
            // onResult: resolver.next,
            ),
      );
    }
  }
}
