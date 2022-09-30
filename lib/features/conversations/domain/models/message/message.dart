import 'package:isar/isar.dart';

part 'message.g.dart';

@collection
class Message {
  Id? id;

  @Index(caseSensitive: true)
  late String? serverMessageId;

  late String author_Id;

  late String text;

  late String created_at;

  late String conversationId;
}
