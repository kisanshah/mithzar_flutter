import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/local/shar_pref.dart';

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
      resolver.next();
    } else {
      resolver.next(false);
    }
  }
}
