import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chat_app/features/account/presentation/pages/accountsPage.dart';
import 'package:chat_app/features/chat/presentation/pages/chatListPage.dart';

import 'package:chat_app/features/onBoarding/presentation/pages/on_boarding_screen.dart';
import 'package:chat_app/features/onBoarding/presentation/pages/pageview_pages/updateUser.dart';
import 'package:chat_app/features/settings/presentation/pages/settingsPage.dart';
import '../features/home/presentation/pages/homepage.dart';
import '../features/onBoarding/presentation/pages/pageview_pages/login.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/splash', page: OnBoardingScreen),
    AutoRoute(path: '/login', page: LoginPage, initial: true),
    AutoRoute(path: '/updateUsername', page: UpdateUserPage),
    AutoRoute(path: '/homePage', page: HomePage, children: [
      AutoRoute(
        path: "chatList",
        name: "ChatListRouter",
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: "",
            page: ChatListPage,
          ),
          RedirectRoute(path: '*', redirectTo: ''),
        ],
      ),
      AutoRoute(
        path: "account",
        name: "AccountRouter",
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: "", page: AccountsPage),
          RedirectRoute(path: '*', redirectTo: ''),
        ],
      ),
      AutoRoute(
        path: "settings",
        name: "SettingsRouter",
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: "", page: SettingsPage),
          RedirectRoute(path: '*', redirectTo: ''),
        ],
      )
    ]),
  ],
)
class $AppRouter {}
