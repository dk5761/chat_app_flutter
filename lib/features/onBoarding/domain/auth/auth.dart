import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  factory Auth(
      {required User? user,
      required bool isAuthenticated,
      required bool isLoading,
      required bool isError}) = _Auth;

  factory Auth.fromJson(Map<String, Object?> json) => _$AuthFromJson(json);
}
