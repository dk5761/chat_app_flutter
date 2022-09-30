import 'package:chat_app/features/chat/data/online/chat_online_repository.dart';
import 'package:chat_app/features/chat/data/online/chat_online_repository_impl.dart';
import 'package:chat_app/features/chat/domain/restModels/chatUser/chat_user_response.dart';
import 'package:chat_app/features/chat/domain/restModels/searchState/search_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class SearchUserController extends StateNotifier<SearchState> {
  SearchUserController({required this.ref})
      : super(SearchState(isLoading: false, user: [], email: null));

  final Ref ref;

  final logger = Logger();

  Future<void> getUserByEmail(String email) async {
    try {
      state = state.copyWith(isLoading: true);

      //check if the previous email and new email is same//
      if (email != state.email) {
        final repo = ref.watch(onlineRepositoryProvider);
        final user = await repo.getUserByEmail(email);

        state = state.copyWith(isLoading: false, user: [user], email: email);
      }

      state = state.copyWith(isLoading: false);
    } catch (err) {
      state = state.copyWith(isLoading: false, user: []);
    }
  }

  void clearState() {
    state = state.copyWith(isLoading: false, email: null, user: []);
  }
}

final searchUserProvider =
    StateNotifierProvider<SearchUserController, SearchState>((ref) {
  return SearchUserController(ref: ref);
});
