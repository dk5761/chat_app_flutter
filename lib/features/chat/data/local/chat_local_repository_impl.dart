// ignore_for_file: non_constant_identifier_names

import 'package:chat_app/common/db/isar_service.dart';
import 'package:chat_app/features/chat/data/local/chat_local_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../../domain/dbModels/userConversation/user_conversation.dart';

class IsarChatLocalRepository implements LocalRepository {
  IsarChatLocalRepository({Key? key, required this.db, required this.ref}) {
    UserConversations = db.userConversations;
  }

  final Isar db;
  final Ref ref;
  late IsarCollection<UserConversation> UserConversations;

  @override
  Future<List<UserConversation>> getAllConversations() async {
    final chats = await UserConversations.where().findAll();
    print(chats);
    return chats;
  }

  @override
  Future<void> createOrUpdateConversation(int? id, String userId,
      String username, String avatar_url, String? conversationId) async {
    final userConversation = UserConversation()
      ..id = id
      ..userId = userId
      ..avatar_url = avatar_url
      ..conversationId = conversationId ?? ""
      ..username = username;

    late dynamic user;

    await db.writeTxn(() async {
      user = await UserConversations.put(userConversation);
    });

    print(user);
  }

  Future<void> deleteConversation(int id) async {
    await db.writeTxn(() async {
      await UserConversations.delete(id);
    });
  }

  Future<UserConversation?> findUserByUserID(String userId) async {
    final UserConversation? user =
        await UserConversations.where().userIdEqualTo(userId).findFirst();

    if (user != null) {
      return user;
    }

    return null;
  }
}

final IsarChatLocalRepoProvider = Provider((ref) async {
  final db = ref.read(isarProvider);
  return IsarChatLocalRepository(db: db, ref: ref);
});
