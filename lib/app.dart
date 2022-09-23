import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/onBoarding/presentation/controllers/auth_controller.dart';
import 'routing/router.gr.dart';
import 'utils/theming.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  final appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    ref.read(authProvider.notifier).loadUser();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    return MaterialApp.router(
        theme: ThemeData(primarySwatch: Colors.blue, textTheme: textTheme),
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: AutoRouterDelegate.declarative(appRouter,
            routes: (_) => [
                  if (!authState.isAuthenticated)
                    OnBoardingScreen()
                  else
                    HomeRoute()
                ]));
  }
}
