import 'package:auto_route/auto_route.dart';
import 'package:chat_app/features/conversations/presentation/pages/add_user_page.dart';
import 'package:chat_app/features/conversations/presentation/pages/conversation_page.dart';
import 'package:chat_app/features/conversations/presentation/pages/conversation_list_page.dart';
import 'package:chat_app/features/conversations/presentation/pages/search_page.dart';

import 'package:chat_app/features/onBoarding/presentation/pages/on_boarding_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'onBoardingPageView', page: OnBoardingScreen),
    // AutoRoute(path: '/home', page: RootPage, initial: true, children: []),
    AutoRoute(
      path: "Conversation",
      name: "ConversationsRouter",
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: "", page: ConversationListPage, initial: true),
        AutoRoute(
          path: "conversation/one",
          page: ConversationPage,
        ),
        AutoRoute(
          path: "search",
          page: SearchPage,
        ),
        AutoRoute(
          path: "adduser",
          page: AddUserPage,
        ),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
)
class $AppRouter {}
