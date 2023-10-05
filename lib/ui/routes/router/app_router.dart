import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/ui/routes/guards/auth.dart';
import 'package:e_commerce_front_end/ui/routes/router/app_router.gr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  AppRouter(this._ref);
  final Ref _ref;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(
          page: MainRoute.page,
          guards: [AuthGuard(_ref)],
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: OrderRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
