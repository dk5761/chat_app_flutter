// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Auth _$$_AuthFromJson(Map<String, dynamic> json) => _$_Auth(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      isAuthenticated: json['isAuthenticated'] as bool,
      isLoading: json['isLoading'] as bool,
      isError: json['isError'] as bool,
    );

Map<String, dynamic> _$$_AuthToJson(_$_Auth instance) => <String, dynamic>{
      'user': instance.user,
      'isAuthenticated': instance.isAuthenticated,
      'isLoading': instance.isLoading,
      'isError': instance.isError,
    };
