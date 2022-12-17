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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:e_commerce_front_end/ui/auth/sign_in.dart' as _i1;
import 'package:e_commerce_front_end/ui/auth/sign_up.dart' as _i2;
import 'package:e_commerce_front_end/ui/home/home_page.dart' as _i4;
import 'package:e_commerce_front_end/ui/main/main_page.dart' as _i3;
import 'package:e_commerce_front_end/ui/orders/order_page.dart' as _i6;
import 'package:e_commerce_front_end/ui/profile/profile_page.dart' as _i7;
import 'package:e_commerce_front_end/ui/search/search_page.dart' as _i5;
import 'package:flutter/material.dart' as _i9;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.SearchPage(),
      );
    },
    OrderRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.OrderPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SignInRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i8.RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            _i8.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: MainRoute.name,
            ),
            _i8.RouteConfig(
              SearchRoute.name,
              path: 'search-page',
              parent: MainRoute.name,
            ),
            _i8.RouteConfig(
              OrderRoute.name,
              path: 'order-page',
              parent: MainRoute.name,
            ),
            _i8.RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: MainRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main-page',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.SearchPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: 'search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i6.OrderPage]
class OrderRoute extends _i8.PageRouteInfo<void> {
  const OrderRoute()
      : super(
          OrderRoute.name,
          path: 'order-page',
        );

  static const String name = 'OrderRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}
