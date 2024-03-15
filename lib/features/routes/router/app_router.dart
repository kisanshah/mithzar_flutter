import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/features/routes/guards/auth.dart';
import 'package:mithzar/features/routes/router/app_router.gr.dart';

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
          page: GuardedRouteWrapper.page,
          guards: [AuthGuard(_ref)],
          children: [
            AutoRoute(
              page: MainRoute.page,
              children: [
                AutoRoute(page: HomeRoute.page),
                AutoRoute(page: SearchRoute.page),
                AutoRoute(page: OrderRoute.page, initial: true),
                AutoRoute(page: ProfileRoute.page),
              ],
            ),
            AutoRoute(page: ProductDetailRoute.page),
            AutoRoute(page: CartRoute.page),
            AutoRoute(page: PaymentRoute.page),
            AutoRoute(page: OrderDetailRoute.page),
            AutoRoute(page: AddressRoute.page),
          ],
        ),
      ];
}
