import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../../../../common/db/isar_service.dart';
import '../../domain/models/userConversation/user_conversation.dart';
import 'chat_local_repository.dart';

class IsarConversationsLocalRepository extends LocalRepository {
  IsarConversationsLocalRepository(
      {Key? key, required this.db, required this.ref}) {
    userConversations = db.userConversations;
  }

  final Ref ref;
  final Isar db;
  late IsarCollection<UserConversation> userConversations;

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
      user = await userConversations.put(userConversation);
    });
  }

  @override
  Future<void> deleteConversation(int id) async {
    await db.writeTxn(() async {
      await userConversations.delete(id);
    });
  }

  @override
  Future<List<UserConversation>> getAllConversations() async {
    final chats = await userConversations.where().findAll();
    return chats;
  }

  Future<UserConversation?> findUserByUserID(String userId) async {
    final UserConversation? user =
        await userConversations.where().userIdEqualTo(userId).findFirst();

    if (user != null) {
      return user;
    }

    return null;
  }
}

final isarCoversationsLocalRepoProvider = Provider((ref) async {
  final db = ref.read(isarProvider);
  return IsarConversationsLocalRepository(db: db, ref: ref);
});
