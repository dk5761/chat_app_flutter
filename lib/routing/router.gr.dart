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
import 'package:flutter/material.dart' as _i9;

import '../features/account/presentation/pages/accountsPage.dart' as _i7;
import '../features/chat/presentation/pages/chatListPage.dart' as _i6;
import '../features/home/presentation/pages/homepage.dart' as _i4;
import '../features/onBoarding/presentation/pages/on_boarding_screen.dart'
    as _i1;
import '../features/onBoarding/presentation/pages/pageview_pages/login.dart'
    as _i2;
import '../features/onBoarding/presentation/pages/pageview_pages/updateUser.dart'
    as _i3;
import '../features/settings/presentation/pages/settingsPage.dart' as _i8;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
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
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.HomePage(key: args.key),
      );
    },
    ChatListRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    AccountRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    ChatListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ChatListPage(),
      );
    },
    AccountsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.AccountsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsPage(),
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
          children: [
            _i5.RouteConfig(
              ChatListRouter.name,
              path: 'chatList',
              parent: HomeRoute.name,
              children: [
                _i5.RouteConfig(
                  ChatListRoute.name,
                  path: '',
                  parent: ChatListRouter.name,
                ),
                _i5.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ChatListRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i5.RouteConfig(
              AccountRouter.name,
              path: 'account',
              parent: HomeRoute.name,
              children: [
                _i5.RouteConfig(
                  AccountsRoute.name,
                  path: '',
                  parent: AccountRouter.name,
                ),
                _i5.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: AccountRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i5.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: HomeRoute.name,
              children: [
                _i5.RouteConfig(
                  SettingsRoute.name,
                  path: '',
                  parent: SettingsRouter.name,
                ),
                _i5.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: SettingsRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.OnBoardingScreen]
class OnBoardingScreen extends _i5.PageRouteInfo<OnBoardingScreenArgs> {
  OnBoardingScreen({_i9.Key? key})
      : super(
          OnBoardingScreen.name,
          path: '/splash',
          args: OnBoardingScreenArgs(key: key),
        );

  static const String name = 'OnBoardingScreen';
}

class OnBoardingScreenArgs {
  const OnBoardingScreenArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'OnBoardingScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i9.Key? key,
    required _i9.PageController pageController,
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

  final _i9.Key? key;

  final _i9.PageController pageController;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, pageController: $pageController}';
  }
}

/// generated route for
/// [_i3.UpdateUserPage]
class UpdateUserRoute extends _i5.PageRouteInfo<UpdateUserRouteArgs> {
  UpdateUserRoute({
    _i9.Key? key,
    required _i9.PageController pageController,
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

  final _i9.Key? key;

  final _i9.PageController pageController;

  @override
  String toString() {
    return 'UpdateUserRouteArgs{key: $key, pageController: $pageController}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i5.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i9.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          path: '/homePage',
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.EmptyRouterPage]
class ChatListRouter extends _i5.PageRouteInfo<void> {
  const ChatListRouter({List<_i5.PageRouteInfo>? children})
      : super(
          ChatListRouter.name,
          path: 'chatList',
          initialChildren: children,
        );

  static const String name = 'ChatListRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class AccountRouter extends _i5.PageRouteInfo<void> {
  const AccountRouter({List<_i5.PageRouteInfo>? children})
      : super(
          AccountRouter.name,
          path: 'account',
          initialChildren: children,
        );

  static const String name = 'AccountRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class SettingsRouter extends _i5.PageRouteInfo<void> {
  const SettingsRouter({List<_i5.PageRouteInfo>? children})
      : super(
          SettingsRouter.name,
          path: 'settings',
          initialChildren: children,
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i6.ChatListPage]
class ChatListRoute extends _i5.PageRouteInfo<void> {
  const ChatListRoute()
      : super(
          ChatListRoute.name,
          path: '',
        );

  static const String name = 'ChatListRoute';
}

/// generated route for
/// [_i7.AccountsPage]
class AccountsRoute extends _i5.PageRouteInfo<void> {
  const AccountsRoute()
      : super(
          AccountsRoute.name,
          path: '',
        );

  static const String name = 'AccountsRoute';
}

/// generated route for
/// [_i8.SettingsPage]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '',
        );

  static const String name = 'SettingsRoute';
}
