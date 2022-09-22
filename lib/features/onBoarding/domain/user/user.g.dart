// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: json['email'] as String,
      username: json['username'] as String?,
      is_admin: json['is_admin'] as bool,
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      authToken: json['authToken'] as String,
      resetToken: json['resetToken'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'is_admin': instance.is_admin,
      'profile': instance.profile,
      'authToken': instance.authToken,
      'resetToken': instance.resetToken,
    };

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      avatar_url: json['avatar_url'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'avatar_url': instance.avatar_url,
      'name': instance.name,
    };
