import 'package:chat_app/features/chat/domain/dbModels/userConversation/user_conversation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class LocalRepository {
  Future<List<UserConversation>> getAllConversations();
  Future<void> createOrUpdateConversation(int? id, String userId,
      String username, String avatar_url, String? conversationId);
  Future<void> deleteConversation(int id);
}

final chatLocalRepositoryProvider = Provider((ref) => LocalRepository);
