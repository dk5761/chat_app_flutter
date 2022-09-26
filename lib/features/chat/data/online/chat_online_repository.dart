import 'package:chat_app/features/chat/domain/restModels/chatUser/chat_user_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class OnlineRepository {
  Future<String> getConversationId(String user1, String user2);
  // Future<void> createOrUpdateConversation(int? id, String userId,
  //     String username, String avatar_url, String? conversationId);
  // Future<void> deleteConversation(int id);
  Future<ChatUserResponse> getUserByEmail(String email);
}

final chatLocalRepositoryProvider = Provider((ref) => OnlineRepository);
