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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:e_commerce_front_end/ui/auth/sign_in.dart' as _i1;
import 'package:e_commerce_front_end/ui/auth/sign_up.dart' as _i2;
import 'package:e_commerce_front_end/ui/home/home_page.dart' as _i3;
import 'package:flutter/material.dart' as _i5;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SignInRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i4.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i4.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}
