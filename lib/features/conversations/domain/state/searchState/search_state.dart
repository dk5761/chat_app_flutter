// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/chatUser/chat_user_response.dart';

part 'search_state.freezed.dart';
// part 'chat_state.g.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState(
      {required List<ChatUserResponse> user,
      required bool isLoading,
      String? email}) = _SearchState;
}
