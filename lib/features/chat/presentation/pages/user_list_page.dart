// ignore_for_file: avoid_unnecessary_containers

import 'package:auto_route/auto_route.dart';
import 'package:chat_app/features/chat/data/online/chat_online_repository_impl.dart';
import 'package:chat_app/features/chat/domain/restModels/chatUser/chat_user_response.dart';
import 'package:chat_app/features/chat/presentation/pages/chat_page.dart';
import 'package:chat_app/features/chat/presentation/pages/controllers/search_user_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/search_widget.dart';

class UserListPage extends ConsumerWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(searchUserProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("user list"),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          children: [
            SearchWidget(
              onSubmit: (data) {
                ref
                    .read(
                      searchUserProvider.notifier,
                    )
                    .getUserByEmail(data);
              },
            ),
            if (searchState.isLoading)
              const Center(
                child: CircularProgressIndicator(),
              ),
            // if (searchState.user.isNotEmpty)
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                        size: const Size.fromRadius(48),
                        // child: Image.network(searchState
                        //             .user[0].profile!.avatar_url ==
                        //         ""
                        //     ? "https://cdn-icons-png.flaticon.com/512/1160/1160040.png?w=360"
                        //     : searchState.user[0].profile!.avatar_url),
                        child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/1160/1160040.png?w=360")),
                  ),
                ),
                // title: Text(searchState.user[0].username as String),
                title: Text("string"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
