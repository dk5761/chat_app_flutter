import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:chat_app/common/sockets/socket_service.dart';
import 'package:chat_app/utils/providers/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/onBoarding/presentation/controllers/auth_controller.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'utils/routing/router.gr.dart';
import 'utils/theming.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  final appRouter = AppRouter();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(authProvider.notifier).loadUser();
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final connectivity = ref.watch(connectivityProvider);

    if (authState.isAuthenticated) {
      connectivity.whenData((value) {
        if (value != ConnectionState.none) {
          ref.watch(socketClientProvider);
        }
      });
    }

    Future.delayed(
        const Duration(seconds: 3), () => FlutterNativeSplash.remove());

    return MaterialApp.router(
      theme: ThemeData(primarySwatch: Colors.blue, textTheme: textTheme),
      routeInformationProvider: appRouter.routeInfoProvider(),
      routeInformationParser:
          appRouter.defaultRouteParser(includePrefixMatches: true),
      routerDelegate: AutoRouterDelegate.declarative(appRouter,
          routes: (_) => [
                if (!authState.isAuthenticated)
                  OnBoardingScreen()
                else
                  const ConversationsRouter()
              ]),
    );
  }
}
