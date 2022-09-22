// import 'package:flutter_boilerplate/shared/http/app_exception.dart';
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String email,
    required String? username,
    required bool is_admin,
    required Profile? profile,
    required String authToken,
    required String? resetToken,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class Profile with _$Profile {
  factory Profile({
    required String avatar_url,
    required String name,
  }) = _Profile;

  factory Profile.fromJson(Map<String, Object?> json) =>
      _$ProfileFromJson(json);
}
