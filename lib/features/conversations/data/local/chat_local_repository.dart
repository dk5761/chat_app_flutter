import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/userConversation/user_conversation.dart';

abstract class LocalRepository {
  Future<List<UserConversation>> getAllConversations();
  Future<void> createOrUpdateConversation(int? id, String userId,
      String username, String avatar_url, String? conversationId);
  Future<void> deleteConversation(int id);
}

final chatLocalRepositoryProvider = Provider((ref) => LocalRepository);
