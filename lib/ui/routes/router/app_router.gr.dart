// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:e_commerce_front_end/ui/auth/sign_in.dart' as _i2;
import 'package:e_commerce_front_end/ui/auth/sign_up.dart' as _i3;
import 'package:e_commerce_front_end/ui/home/home_page.dart' as _i5;
import 'package:e_commerce_front_end/ui/main/main_page.dart' as _i4;
import 'package:e_commerce_front_end/ui/orders/order_page.dart' as _i7;
import 'package:e_commerce_front_end/ui/profile/profile_page.dart' as _i8;
import 'package:e_commerce_front_end/ui/routes/guards/auth.dart' as _i11;
import 'package:e_commerce_front_end/ui/search/search_page.dart' as _i6;
import 'package:e_commerce_front_end/ui/splash/splash_page.dart' as _i1;
import 'package:flutter/material.dart' as _i10;

class AppRouter extends _i9.RootStackRouter {
  AppRouter({
    _i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.SignInPage(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.SignUpPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.SearchPage(),
      );
    },
    OrderRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.OrderPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfilePage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i9.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i9.RouteConfig(
          MainRoute.name,
          path: '/main-page',
          guards: [authGuard],
          children: [
            _i9.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: MainRoute.name,
            ),
            _i9.RouteConfig(
              SearchRoute.name,
              path: 'search-page',
              parent: MainRoute.name,
            ),
            _i9.RouteConfig(
              OrderRoute.name,
              path: 'order-page',
              parent: MainRoute.name,
            ),
            _i9.RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: MainRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i9.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i10.Key? key,
    dynamic Function(bool)? onResult,
  }) : super(
          SignInRoute.name,
          path: '/sign-in-page',
          args: SignInRouteArgs(
            key: key,
            onResult: onResult,
          ),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    this.onResult,
  });

  final _i10.Key? key;

  final dynamic Function(bool)? onResult;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main-page',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: 'search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i7.OrderPage]
class OrderRoute extends _i9.PageRouteInfo<void> {
  const OrderRoute()
      : super(
          OrderRoute.name,
          path: 'order-page',
        );

  static const String name = 'OrderRoute';
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}
