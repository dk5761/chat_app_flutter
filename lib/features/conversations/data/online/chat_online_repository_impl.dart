import 'package:chat_app/utils/http/dio.dart';
import 'package:chat_app/utils/http/models/api_response.dart';
import 'package:chat_app/utils/http/models/app_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../onBoarding/presentation/controllers/auth_controller.dart';
import '../../domain/models/chatUser/chat_user_response.dart';
import '../../domain/models/conversation/conversation.dart';
import 'chat_online_repository.dart';

final baseUrl = "http://${dotenv.env['IP']}";
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
  Future<APIResponse> getUserByEmail(String email) async {
    try {
      final response = await Future.delayed(
          const Duration(seconds: 2),
          () => ref.read(dioProvider).get('$baseUrl/user/email/$email',
              cancelToken: ref.cancelToken()));
      return APIResponse.success(ChatUserResponse.fromJson(response.data));
    } catch (err) {
      //cancel call if err
      ref.cancelToken().cancel();
      return APIResponse.error(AppException.error());
    }
  }
}

final onlineRepositoryProvider =
    Provider((ref) => ChatOnlineRepositoryImplementation(ref: ref));

// final getUserByEmailProvider =
//     FutureProvider.family<ChatUserResponse?, String>((ref, email) async {
//   final repo = ref.watch(onlineRepositoryProvider);
//   if (email == "") {
//     return null;
//   }
//   return await repo.getUserByEmail(email);
// });

final getUser = FutureProvider.family<APIResponse?, String>((ref, email) async {
  final repo = ref.watch(onlineRepositoryProvider);
  if (email == "") {
    return null;
  }
  return await repo.getUserByEmail(email);
});
