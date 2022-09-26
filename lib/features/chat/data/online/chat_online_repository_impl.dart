import 'package:chat_app/features/chat/data/online/chat_online_repository.dart';
import 'package:chat_app/features/chat/domain/restModels/chatUser/chat_user_response.dart';
import 'package:chat_app/features/chat/domain/restModels/conversation/conversation.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../onBoarding/presentation/controllers/auth_controller.dart';

final clientProvider = Provider(
    (ref) => Dio(BaseOptions(baseUrl: "http://${dotenv.env['IP']}/chat/")));

final userClientProvider = Provider((ref) => Dio(BaseOptions(
        baseUrl: "http://${dotenv.env['IP']}/user/",
        headers: {
          "authorization": "Bearer ${ref.watch(authProvider).user?.authToken}"
        })));

class ChatOnlineRepositoryImplementation implements OnlineRepository {
  ChatOnlineRepositoryImplementation({required this.ref});

  final Ref ref;

  @override
  Future<String> getConversationId(String user1, String user2) async {
    final response = await ref
        .read(clientProvider)
        .post('conversation', data: {"user1": user1, "user2": user2});

    final conversation = Conversation.fromJson(response.data);
    return conversation.id;
  }

  @override
  Future<ChatUserResponse> getUserByEmail(String email) async {
    final response = await ref.read(clientProvider).get('email/$email');
    return ChatUserResponse.fromJson(response.data);
  }
}
