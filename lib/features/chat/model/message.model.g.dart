// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: json['id'] as String,
      roomId: json['roomId'] as String,
      text: json['text'] as String? ?? '',
      isMe: json['isMe'] as bool? ?? false,
      read: json['read'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomId': instance.roomId,
      'text': instance.text,
      'isMe': instance.isMe,
      'read': instance.read,
      'createdAt': instance.createdAt.toIso8601String(),
    };
