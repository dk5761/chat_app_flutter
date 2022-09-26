// import 'package:flutter_boilerplate/shared/http/app_exception.dart';
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user_response.freezed.dart';
part 'chat_user_response.g.dart';

@freezed
class ChatUserResponse with _$ChatUserResponse {
  factory ChatUserResponse({
    required String email,
    required String? username,
    required Profile? profile,
  }) = _ChatUserResponse;

  factory ChatUserResponse.fromJson(Map<String, Object?> json) =>
      _$ChatUserResponseFromJson(json);
}

@freezed
class Profile with _$Profile {
  factory Profile({
    required String avatar_url,
  }) = _Profile;

  factory Profile.fromJson(Map<String, Object?> json) =>
      _$ProfileFromJson(json);
}
