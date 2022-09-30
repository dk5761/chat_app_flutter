// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Conversation _$$_ConversationFromJson(Map<String, dynamic> json) =>
    _$_Conversation(
      id: json['id'] as String,
      user1: json['user1'] as String,
      user2: json['user2'] as String,
      last_message_id: json['last_message_id'] as String,
    );

Map<String, dynamic> _$$_ConversationToJson(_$_Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user1': instance.user1,
      'user2': instance.user2,
      'last_message_id': instance.last_message_id,
    };
