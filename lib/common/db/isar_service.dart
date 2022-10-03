import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../../features/conversations/domain/models/message/message.dart';
import '../../features/conversations/domain/models/userConversation/user_conversation.dart';

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
