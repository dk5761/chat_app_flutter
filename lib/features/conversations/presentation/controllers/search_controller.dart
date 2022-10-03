import 'package:chat_app/features/conversations/data/online/chat_online_repository_impl.dart';
import 'package:chat_app/features/conversations/domain/models/chatUser/chat_user_response.dart';
import 'package:chat_app/utils/http/models/api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/state/searchState/search_state.dart';

class SearchController extends StateNotifier<SearchState> {
  SearchController({required this.ref})
      : super(SearchState(user: [], isLoading: false));

  final Ref ref;

  Future<void> fetchUser(String email, bool islocal) async {
    state = state.copyWith(isLoading: true);
    try {
      final response =
          await ref.watch(onlineRepositoryProvider).getUserByEmail(email);

      response.when(
          success: (_) {},
          error: (error) {
            print(error);
          });

      if (response is APISuccess) {
        final value = response.value;
        state = state.copyWith(user: [value], isLoading: false);
      }
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
      state = state.copyWith(user: [], isLoading: false);
    }
  }

  Future<void> fetchUserWithFProvider(String email) async {
    state = state.copyWith(isLoading: true);
    try {
      final response = ref.refresh(getUser(email));
      response.when(
          data: (data) => state = state.copyWith(
              user: data != null ? [data as ChatUserResponse] : [],
              isLoading: false),
          error: (err, stack) => print(err.toString()),
          loading: () => null);
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
      state = state.copyWith(user: [], isLoading: false);
    }
  }

  void clearState() {
    state = state.copyWith(user: [], isLoading: false);
  }
}

final searchControllerProvider =
    StateNotifierProvider<SearchController, SearchState>((ref) {
  return SearchController(ref: ref);
});
