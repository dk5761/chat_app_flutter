// ignore_for_file: non_constant_identifier_names

import 'package:chat_app/features/onBoarding/presentation/controllers/auth_controller.dart';

import '../application/auth_local_service.dart';
import '../domain/user/user.dart';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class IAuthRepository {
  Future<User> login(String email, String password);
  Future<User> loginOrRegister(String email, String password);

  Future<User> register(String email, String password, String username,
      String avatar_url, String name);
  Future<void> signOut();
}

final clientProvider = Provider(
    (ref) => Dio(BaseOptions(baseUrl: "http://${dotenv.env['IP']}/auth/")));

final userClientProvider = Provider((ref) => Dio(BaseOptions(
        baseUrl: "http://${dotenv.env['IP']}/user/",
        headers: {
          "authorization": "Bearer ${ref.watch(authProvider).user?.authToken}"
        })));

class AuthRepository implements IAuthRepository {
  AuthRepository(this.ref);

  final ProviderRef ref;

  @override
  Future<User> login(String email, String password) async {
    final response = await ref
        .read(clientProvider)
        .post('login', data: {"email": email, "password": password});

    final user = User.fromJson(response.data);
    ref.read(authServiceProvider).saveUser(user);

    return user;
  }

  @override
  Future<User> loginOrRegister(String email, String password) async {
    final response = await ref
        .read(clientProvider)
        .post('loginOrRegister', data: {"email": email, "password": password});

    final user = User.fromJson(response.data);
    ref.read(authServiceProvider).saveUser(user);
    return user;
  }

  @override
  Future<User> register(String email, String password, String username,
      String avatar_url, String name) async {
    final response = await ref.read(clientProvider).post('register', data: {
      "email": email,
      "password": password,
      "username": username,
      "is_admin": false,
      "profile": {"avatar_url": avatar_url, "name": name}
    });

    final user = User.fromJson(response.data);
    ref.read(authServiceProvider).saveUser(user);
    return user;
  }

  // modify for more optimization
  Future<User> update(
      {String? email,
      String? username,
      String? avatar_url,
      String? name}) async {
    Map<String, dynamic> data = {
      "email": email,
      "username": username,
      "is_admin": false,
      "profile": {"avatar_url": avatar_url, "name": name}
    };

    if (email == null) data.remove("email");
    if (username == null) data.remove("username");
    if (avatar_url == null) data["profile"].remove("avatar_url");
    if (name == null) data["profile"].remove("name");
    if (avatar_url == null && name == null) data.remove("profile");

    var response = await ref.read(userClientProvider).put(
          '',
          data: data,
        );

    var userJson = response.data;

    userJson['authToken'] = ref.watch(authProvider).user?.authToken;

    final user = User.fromJson(response.data);
    ref.read(authServiceProvider).saveUser(user);
    return user;
  }

  @override
  Future<void> signOut() async {
    ref.read(authServiceProvider).deleteUser();
  }
}

final authRepositoryProvider = Provider((ref) => AuthRepository(ref));

// final getCurrentUser = Provider((ref) => ref.watch(userProvider));
