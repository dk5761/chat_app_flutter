import 'package:auto_route/auto_route.dart';
import 'package:chat_app/features/conversations/presentation/widgets/animated_search_bar.dart';
import 'package:chat_app/utils/providers/connectivity.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomHomeAppBar extends ConsumerStatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  CustomHomeAppBar({Key? key, required this.title})
      : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomHomeAppBarState();
}

class _CustomHomeAppBarState extends ConsumerState<CustomHomeAppBar> {
  @override
  Widget build(BuildContext context) {
    final connectivity = ref.watch(connectivityProvider);

    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.teal,
                  child: CircleAvatar(
                    backgroundImage: const AssetImage(
                        "assets/images/defaults/default_avatar.png"),
                    radius: 28,
                    // foregroundImage: const NetworkImage(
                    //     "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    // onForegroundImageError: (_, __) {
                    //   ref.watch(connectivityProvider);
                    // },
                    foregroundImage: connectivity.when(
                        data: (data) {
                          if (data != ConnectivityResult.none) {
                            return const NetworkImage(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            );
                          }

                          // check if the user's image in cache.
                          // if present show that or show default avatar
                          return const AssetImage(
                              "assets/images/defaults/default_avatar.png");
                        },
                        error: (_, __) {},
                        loading: () {}),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  AutoRouter.of(context).pushNamed('search');
                },
                child: const Icon(Icons.search),
              ),
              const SizedBox(
                width: 12,
              ),
              InkWell(
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {},
                child: const Icon(Icons.menu),
              )
            ],
          )
        ],
      ),
    );
  }
}


// Text(
//         widget.title,
//         style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
//       ),
//       actions: [
//         InkWell(
//           onTap: () {},
//           child: const CircleAvatar(
//             radius: 18,
//             backgroundColor: Colors.teal,
//             child: CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
//               radius: 28,
//             ),
//           ),
//         ),
//         const SizedBox(
//           width: 16,
//         )
//       ],