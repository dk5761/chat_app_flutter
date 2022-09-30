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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:chat_app/core/presentation/rootPage.dart' as _i2;
import 'package:chat_app/features/conversations/presentation/pages/conversation.dart'
    as _i5;
import 'package:chat_app/features/conversations/presentation/pages/conversationList.dart'
    as _i4;
import 'package:chat_app/features/onBoarding/presentation/pages/on_boarding_screen.dart'
    as _i1;
import 'package:flutter/material.dart' as _i6;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    OnBoardingScreen.name: (routeData) {
      final args = routeData.argsAs<OnBoardingScreenArgs>(
          orElse: () => const OnBoardingScreenArgs());
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.OnBoardingScreen(key: args.key),
      );
    },
    RootRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.RootPage(),
      );
    },
    ConversationsRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    ConversationListRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.ConversationListPage(),
      );
    },
    ConversationRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ConversationPage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          OnBoardingScreen.name,
          path: 'onBoardingPageView',
        ),
        _i3.RouteConfig(
          RootRoute.name,
          path: '/home',
          children: [
            _i3.RouteConfig(
              ConversationsRouter.name,
              path: 'Conversation',
              parent: RootRoute.name,
              children: [
                _i3.RouteConfig(
                  ConversationListRoute.name,
                  path: '',
                  parent: ConversationsRouter.name,
                ),
                _i3.RouteConfig(
                  ConversationRoute.name,
                  path: '',
                  parent: ConversationsRouter.name,
                ),
                _i3.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ConversationsRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.OnBoardingScreen]
class OnBoardingScreen extends _i3.PageRouteInfo<OnBoardingScreenArgs> {
  OnBoardingScreen({_i6.Key? key})
      : super(
          OnBoardingScreen.name,
          path: 'onBoardingPageView',
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
/// [_i2.RootPage]
class RootRoute extends _i3.PageRouteInfo<void> {
  const RootRoute({List<_i3.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ConversationsRouter extends _i3.PageRouteInfo<void> {
  const ConversationsRouter({List<_i3.PageRouteInfo>? children})
      : super(
          ConversationsRouter.name,
          path: 'Conversation',
          initialChildren: children,
        );

  static const String name = 'ConversationsRouter';
}

/// generated route for
/// [_i4.ConversationListPage]
class ConversationListRoute extends _i3.PageRouteInfo<void> {
  const ConversationListRoute()
      : super(
          ConversationListRoute.name,
          path: '',
        );

  static const String name = 'ConversationListRoute';
}

/// generated route for
/// [_i5.ConversationPage]
class ConversationRoute extends _i3.PageRouteInfo<void> {
  const ConversationRoute()
      : super(
          ConversationRoute.name,
          path: '',
        );

  static const String name = 'ConversationRoute';
}
