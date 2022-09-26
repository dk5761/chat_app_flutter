import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'user_conversation.g.dart';

@collection
class UserConversation {
  Id? id;

  @Index(caseSensitive: true)
  late String userId;

  late String username;

  late String avatar_url;

  late String? conversationId;

  late String? socketId;
}
