// ignore_for_file: non_constant_identifier_names

import 'package:chat_app/features/chat/domain/restModels/chatUser/chat_user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';
// part 'chat_state.g.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState(
      {required List<ChatUserResponse> user,
      required bool isLoading,
      String? email}) = _SearchState;
}
