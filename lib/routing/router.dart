import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/presentations/pages/homePage.dart';
import 'package:chat_app/features/onBoarding/presentation/pages/on_boarding_screen.dart';
import 'package:chat_app/features/onBoarding/presentation/pages/pageview_pages/updateUser.dart';
import '../features/onBoarding/presentation/pages/pageview_pages/login.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/splash', page: OnBoardingScreen),
    AutoRoute(path: '/login', page: LoginPage, initial: true),
    AutoRoute(path: '/updateUsername', page: UpdateUserPage),
    AutoRoute(path: '/homePage', page: HomePage),
  ],
)
class $AppRouter {}
