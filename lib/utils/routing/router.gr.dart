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
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:chat_app/features/conversations/presentation/pages/add_user_page.dart'
    as _i6;
import 'package:chat_app/features/conversations/presentation/pages/conversation_list_page.dart'
    as _i3;
import 'package:chat_app/features/conversations/presentation/pages/conversation_page.dart'
    as _i4;
import 'package:chat_app/features/conversations/presentation/pages/search_page.dart'
    as _i5;
import 'package:chat_app/features/onBoarding/presentation/pages/on_boarding_page.dart'
    as _i1;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    OnBoardingScreen.name: (routeData) {
      final args = routeData.argsAs<OnBoardingScreenArgs>(
          orElse: () => const OnBoardingScreenArgs());
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.OnBoardingScreen(key: args.key),
      );
    },
    ConversationsRouter.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ConversationListRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.ConversationListPage(),
      );
    },
    ConversationRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.ConversationPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.SearchPage(),
      );
    },
    AddUserRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.AddUserPage(),
      );
    },
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          OnBoardingScreen.name,
          path: 'onBoardingPageView',
        ),
        _i2.RouteConfig(
          ConversationsRouter.name,
          path: 'Conversation',
          children: [
            _i2.RouteConfig(
              ConversationListRoute.name,
              path: '',
              parent: ConversationsRouter.name,
            ),
            _i2.RouteConfig(
              ConversationRoute.name,
              path: 'conversation/one',
              parent: ConversationsRouter.name,
            ),
            _i2.RouteConfig(
              SearchRoute.name,
              path: 'search',
              parent: ConversationsRouter.name,
            ),
            _i2.RouteConfig(
              AddUserRoute.name,
              path: 'adduser',
              parent: ConversationsRouter.name,
            ),
            _i2.RouteConfig(
              '*#redirect',
              path: '*',
              parent: ConversationsRouter.name,
              redirectTo: '',
              fullMatch: true,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.OnBoardingScreen]
class OnBoardingScreen extends _i2.PageRouteInfo<OnBoardingScreenArgs> {
  OnBoardingScreen({_i7.Key? key})
      : super(
          OnBoardingScreen.name,
          path: 'onBoardingPageView',
          args: OnBoardingScreenArgs(key: key),
        );

  static const String name = 'OnBoardingScreen';
}

class OnBoardingScreenArgs {
  const OnBoardingScreenArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'OnBoardingScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ConversationsRouter extends _i2.PageRouteInfo<void> {
  const ConversationsRouter({List<_i2.PageRouteInfo>? children})
      : super(
          ConversationsRouter.name,
          path: 'Conversation',
          initialChildren: children,
        );

  static const String name = 'ConversationsRouter';
}

/// generated route for
/// [_i3.ConversationListPage]
class ConversationListRoute extends _i2.PageRouteInfo<void> {
  const ConversationListRoute()
      : super(
          ConversationListRoute.name,
          path: '',
        );

  static const String name = 'ConversationListRoute';
}

/// generated route for
/// [_i4.ConversationPage]
class ConversationRoute extends _i2.PageRouteInfo<void> {
  const ConversationRoute()
      : super(
          ConversationRoute.name,
          path: 'conversation/one',
        );

  static const String name = 'ConversationRoute';
}

/// generated route for
/// [_i5.SearchPage]
class SearchRoute extends _i2.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: 'search',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i6.AddUserPage]
class AddUserRoute extends _i2.PageRouteInfo<void> {
  const AddUserRoute()
      : super(
          AddUserRoute.name,
          path: 'adduser',
        );

  static const String name = 'AddUserRoute';
}
