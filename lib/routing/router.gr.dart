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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../core/presentations/pages/homePage.dart' as _i4;
import '../features/onBoarding/presentation/pages/on_boarding_screen.dart'
    as _i1;
import '../features/onBoarding/presentation/pages/pageview_pages/login.dart'
    as _i2;
import '../features/onBoarding/presentation/pages/pageview_pages/updateUser.dart'
    as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    OnBoardingScreen.name: (routeData) {
      final args = routeData.argsAs<OnBoardingScreenArgs>(
          orElse: () => const OnBoardingScreenArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.OnBoardingScreen(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginPage(
          key: args.key,
          pageController: args.pageController,
        ),
      );
    },
    UpdateUserRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateUserRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.UpdateUserPage(
          key: args.key,
          pageController: args.pageController,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/login',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          OnBoardingScreen.name,
          path: '/splash',
        ),
        _i5.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i5.RouteConfig(
          UpdateUserRoute.name,
          path: '/updateUsername',
        ),
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/homePage',
        ),
      ];
}

/// generated route for
/// [_i1.OnBoardingScreen]
class OnBoardingScreen extends _i5.PageRouteInfo<OnBoardingScreenArgs> {
  OnBoardingScreen({_i6.Key? key})
      : super(
          OnBoardingScreen.name,
          path: '/splash',
          args: OnBoardingScreenArgs(key: key),
        );

  static const String name = 'OnBoardingScreen';
}

class OnBoardingScreenArgs {
  const OnBoardingScreenArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'OnBoardingScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i6.Key? key,
    required _i6.PageController pageController,
  }) : super(
          LoginRoute.name,
          path: '/login',
          args: LoginRouteArgs(
            key: key,
            pageController: pageController,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.pageController,
  });

  final _i6.Key? key;

  final _i6.PageController pageController;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, pageController: $pageController}';
  }
}

/// generated route for
/// [_i3.UpdateUserPage]
class UpdateUserRoute extends _i5.PageRouteInfo<UpdateUserRouteArgs> {
  UpdateUserRoute({
    _i6.Key? key,
    required _i6.PageController pageController,
  }) : super(
          UpdateUserRoute.name,
          path: '/updateUsername',
          args: UpdateUserRouteArgs(
            key: key,
            pageController: pageController,
          ),
        );

  static const String name = 'UpdateUserRoute';
}

class UpdateUserRouteArgs {
  const UpdateUserRouteArgs({
    this.key,
    required this.pageController,
  });

  final _i6.Key? key;

  final _i6.PageController pageController;

  @override
  String toString() {
    return 'UpdateUserRouteArgs{key: $key, pageController: $pageController}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/homePage',
        );

  static const String name = 'HomeRoute';
}
