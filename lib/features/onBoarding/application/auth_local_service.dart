import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../domain/user/user.dart';

class AuthService {
  AuthService(this.ref);

  final storage = const FlutterSecureStorage();
  final ProviderRef ref;

  Future<void> addToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  Future<String?> getToken() async {
    String? value = await storage.read(key: "token");
    return value;
  }

  Future<void> removeToken() async {
    await storage.delete(key: "token");
  }

  Future<void> saveUser(User user) async {
    await storage.write(key: "user", value: json.encode(user.toJson()));
  }

  Future<User?> getUser() async {
    final userString = await storage.read(key: "user");

    if (userString != null) {
      final user = json.decode(userString);
      return User.fromJson(user);
    }

    return null;
  }

  Future<void> deleteUser() async {
    return await storage.delete(key: "user");
  }
}

final authServiceProvider = Provider<AuthService>((ref) => AuthService(ref));

// final userProvider = FutureProvider<User?>((ref) async {
//   final user = await ref.watch(authServiceProvider).getUser();
//   return user;
// });
