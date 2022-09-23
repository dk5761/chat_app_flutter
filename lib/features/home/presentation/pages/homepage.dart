import 'package:auto_route/auto_route.dart';
import 'package:chat_app/features/home/presentation/widgets/customBottomNavigationBar.dart';
import 'package:chat_app/features/home/presentation/widgets/customBottomNavigationBarItem.dart';
import 'package:chat_app/routing/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: const [
        ChatListRouter(),
        AccountRouter(),
        SettingsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return CustomBottomNavigationBar(items: [
          CustomBottomNavigationBarItem(
            icon: tabsRouter.activeIndex == 0
                ? const Icon(
                    Icons.chat_bubble_rounded,
                    color: Colors.yellow,
                    size: 28,
                  )
                : const Icon(Icons.chat_bubble_outline_outlined, size: 28),
          ),
          CustomBottomNavigationBarItem(
            icon: tabsRouter.activeIndex == 1
                ? const Icon(
                    Icons.emoji_emotions_rounded,
                    color: Colors.yellow,
                    size: 28,
                  )
                : const Icon(Icons.emoji_emotions_outlined, size: 28),
          ),
          CustomBottomNavigationBarItem(
            icon: tabsRouter.activeIndex == 2
                ? const Icon(
                    Icons.settings,
                    color: Colors.yellow,
                    size: 28,
                  )
                : const Icon(Icons.settings_outlined, size: 28),
          ),
        ], onTap: tabsRouter.setActiveIndex);

        // return BottomNavigationBar(
        //   elevation: 1,
        //   type: BottomNavigationBarType.fixed,
        //   currentIndex: tabsRouter.activeIndex,
        //   showSelectedLabels: false,
        //   showUnselectedLabels: false,
        //   onTap: tabsRouter.setActiveIndex,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: tabsRouter.activeIndex == 0
        //           ? const Icon(
        //               Icons.chat_bubble_rounded,
        //               color: Colors.yellow,
        //               size: 55,
        //             )
        //           : const Icon(Icons.chat_bubble_outline_outlined),
        //       label: 'Chats',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: tabsRouter.activeIndex == 1
        //           ? const Icon(
        //               Icons.emoji_emotions_rounded,
        //               color: Colors.yellow,
        //               size: 32,
        //             )
        //           : const Icon(Icons.emoji_emotions_outlined),
        //       label: 'Account',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: tabsRouter.activeIndex == 2
        //           ? const Icon(
        //               Icons.settings,
        //               color: Colors.yellow,
        //               size: 32,
        //             )
        //           : const Icon(Icons.settings_outlined),
        //       label: 'Settings',
        //     ),
        //   ],
        // );
      },
    );
  }
}

//  


// BottomNavigationBar(
//           elevation: 1,
//           type: BottomNavigationBarType.fixed,
//           currentIndex: tabsRouter.activeIndex,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           onTap: tabsRouter.setActiveIndex,
//           items: [
//             BottomNavigationBarItem(
//               icon: tabsRouter.activeIndex == 0
//                   ? const Icon(
//                       Icons.chat_bubble_rounded,
//                       color: Colors.yellow,
//                       size: 32,
//                     )
//                   : const Icon(Icons.chat_bubble_outline_outlined),
//               label: 'Chats',
//             ),
//             BottomNavigationBarItem(
//               icon: tabsRouter.activeIndex == 1
//                   ? const Icon(
//                       Icons.emoji_emotions_rounded,
//                       color: Colors.yellow,
//                       size: 32,
//                     )
//                   : const Icon(Icons.emoji_emotions_outlined),
//               label: 'Account',
//             ),
//             BottomNavigationBarItem(
//               icon: tabsRouter.activeIndex == 2
//                   ? const Icon(
//                       Icons.settings,
//                       color: Colors.yellow,
//                       size: 32,
//                     )
//                   : const Icon(Icons.settings_outlined),
//               label: 'Settings',
//             ),
//           ],
//         );