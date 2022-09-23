import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatListPage extends ConsumerWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        height: 100,
        child: Center(child: Text("ChatListPage")),
      ),
    );
  }
}
