import 'package:chat_app/features/chat/domain/dbModels/message/message.dart';
import 'package:chat_app/features/chat/domain/dbModels/userConversation/user_conversation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

class IsarService {
  late Isar isarDb;

  IsarService() {
    init();
  }

  Future<void> init() async {
    isarDb = await Isar.open([UserConversationSchema, MessageSchema]);
  }
}

final isarProvider = Provider((ref) => IsarService().isarDb);
