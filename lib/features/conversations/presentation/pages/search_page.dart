import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chat_app/features/conversations/presentation/controllers/search_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final searchProvider = ref.watch(searchControllerProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            ref.read(searchControllerProvider.notifier).clearState();
            AutoRouter.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        titleSpacing: 0,
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            controller: _textEditingController,
            onEditingComplete: () {
              ref
                  .read(searchControllerProvider.notifier)
                  .fetchUser(_textEditingController.text, false);
            },
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Search User",
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w300, fontSize: 18)),
          ),
        ),
        actions: const [
          SizedBox(
            width: 50,
          )
        ],
      ),
      body: searchProvider.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: searchProvider.user.length,
              itemBuilder: (ctx, index) {
                final user = searchProvider.user[index];

                return InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(12), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(25), // Image radius
                        child: Image.network(user.profile!.avatar_url,
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(user.username as String),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(user.email),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
