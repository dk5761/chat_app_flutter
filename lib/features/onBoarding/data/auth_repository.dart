// ignore_for_file: non_constant_identifier_names

import 'package:chat_app/features/onBoarding/presentation/controllers/auth_controller.dart';
import 'package:chat_app/utils/http/dio.dart';

import '../application/auth_local_service.dart';
import '../domain/user/user.dart';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class IAuthRepository {
  Future<User> loginOrRegister(String email, String password);
  Future<void> signOut();
  Future<User> update(
      {String? email,
      String? username,
      String? avatar_url,
      String? name,
      User? currentUserData});
}

// final clientProvider = Provider(
//     (ref) => Dio(BaseOptions(baseUrl: "http://${dotenv.env['IP']}/auth/")));

// final userClientProvider = Provider((ref) => Dio(BaseOptions(
//         baseUrl: "http://${dotenv.env['IP']}/user/",
//         headers: {
//           "authorization": "Bearer ${ref.watch(authProvider).user?.authToken}"
//         })));

final authUrl = "http://${dotenv.env['IP']}/auth";
final userUrl = "http://${dotenv.env['IP']}/user";

class AuthRepository implements IAuthRepository {
  AuthRepository(this.ref);

  final ProviderRef ref;

  // login/register the user
  @override
  Future<User> loginOrRegister(String email, String password) async {
    final response = await ref.read(dioProvider).post(
        '$authUrl/loginOrRegister',
        data: {"email": email, "password": password});

    final user = User.fromJson(response.data);
    ref.read(authServiceProvider).saveUser(user);
    return user;
  }

  // update the user details from the profile.
  @override
  Future<User> update(
      {String? email,
      String? username,
      String? avatar_url,
      String? name,
      User? currentUserData}) async {
    Map<String, dynamic> data = {
      "email": email,
      "username": username,
      "profile": {"avatar_url": avatar_url, "name": name}
    };

    // ---section to manually remove data if not to be updated-----
    if (email == null || email == currentUserData!.email) {
      data.remove("email");
    }
    if (username == null || username == currentUserData!.username) {
      data.remove("username");
    }
    if (avatar_url == null ||
        avatar_url == currentUserData!.profile!.avatar_url) {
      data["profile"].remove("avatar_url");
    }
    if (name == null || name == currentUserData!.profile!.name) {
      data["profile"].remove("name");
    }
    if (avatar_url == null && name == null) data.remove("profile");
    // ------

    var response = await ref.read(dioProvider).put(
          '$userUrl/',
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
