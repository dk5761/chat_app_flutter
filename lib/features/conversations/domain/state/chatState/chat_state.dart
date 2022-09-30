// ignore_for_file: non_constant_identifier_names

import 'package:chat_app/features/chat/domain/dbModels/message/message.dart';
import 'package:chat_app/features/chat/domain/dbModels/userConversation/user_conversation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';
// part 'chat_state.g.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState({
    required List<StateUser> stateUser,
  }) = _ChatState;
}

@freezed
class StateUser with _$StateUser {
  factory StateUser(
      {required UserConversation user,
      required List<Message> message}) = _StateUser;
}
