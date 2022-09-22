// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:chat_app/features/onBoarding/domain/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../application/auth_local_service.dart';
import '../../data/auth_repository.dart';
import '../../domain/auth/auth.dart';

class AuthController extends StateNotifier<Auth> {
  AuthController({required this.ref, required this.authRepository})
      : super(Auth(
            user: null,
            isAuthenticated: false,
            isLoading: false,
            isError: false));

  final Ref ref;
  final AuthRepository authRepository;
  final logger = Logger();

  Future<User?> loginOrRegister(String email, String password) async {
    state = state.copyWith(user: null, isLoading: true);
    try {
      final data = await authRepository.loginOrRegister(email, password);
      await ref.read(authServiceProvider).addToken(data.authToken);
      await ref.read(authServiceProvider).saveUser(data);
      state = state.copyWith(
          user: data, isAuthenticated: false, isLoading: false, isError: false);

      return data;
    } catch (err) {
      logger.e(err);
      state = state.copyWith(
          user: null, isLoading: false, isAuthenticated: false, isError: true);
    }
    return null;
  }

  Future<void> signOut() async {
    try {
      await authRepository.signOut();
      await ref.read(authServiceProvider).removeToken();
      state = state.copyWith(
          user: null, isLoading: false, isAuthenticated: false, isError: false);
    } catch (err) {
      logger.e(err);
      state = state.copyWith(
          user: null, isLoading: false, isAuthenticated: false, isError: true);
    }
  }

  Future<void> update(
      {String? email,
      String? username,
      String? avatar_url,
      String? name}) async {
    try {
      User data = await authRepository.update(
          email: email,
          username: username,
          avatar_url: avatar_url,
          name: name,
          currentUserData: state.user);
      state = state.copyWith(user: data, isAuthenticated: true);
    } catch (err) {
      logger.e(err);
      state = state.copyWith(isError: true);
    }
  }

  Future<void> loadUser() async {
    try {
      state = state.copyWith(isLoading: true);
      final user = await ref.watch(authServiceProvider).getUser();

      if (user != null) {
        state = state.copyWith(
            user: user, isAuthenticated: true, isLoading: false, isError: true);
      } else {
        state = state.copyWith(
            user: null,
            isLoading: false,
            isAuthenticated: false,
            isError: false);
      }
    } catch (err) {
      state = state.copyWith(
          user: null, isLoading: false, isAuthenticated: false, isError: true);
    }
  }
}

final authProvider = StateNotifierProvider<AuthController, Auth>((ref) {
  return AuthController(
      authRepository: ref.read(authRepositoryProvider), ref: ref);
});
