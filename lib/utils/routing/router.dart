import 'package:auto_route/auto_route.dart';
import 'package:chat_app/features/chat/domain/restModels/conversation/conversation.dart';
import 'package:chat_app/features/conversations/presentation/pages/conversation.dart';
import 'package:chat_app/features/conversations/presentation/pages/conversationList.dart';

import 'package:chat_app/features/onBoarding/presentation/pages/on_boarding_screen.dart';

import '../../core/presentation/rootPage.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'onBoardingPageView', page: OnBoardingScreen),
    AutoRoute(path: '/home', page: RootPage, initial: true, children: [
      AutoRoute(
        path: "Conversation",
        name: "ConversationsRouter",
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: "", page: ConversationListPage, initial: true),
          AutoRoute(
            path: "",
            page: ConversationPage,
          ),
          RedirectRoute(path: '*', redirectTo: ''),
        ],
      ),
    ]),
  ],
)
class $AppRouter {}
