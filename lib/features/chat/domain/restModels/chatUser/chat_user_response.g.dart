// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatUserResponse _$$_ChatUserResponseFromJson(Map<String, dynamic> json) =>
    _$_ChatUserResponse(
      email: json['email'] as String,
      username: json['username'] as String?,
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatUserResponseToJson(_$_ChatUserResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'profile': instance.profile,
    };

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      avatar_url: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'avatar_url': instance.avatar_url,
    };
