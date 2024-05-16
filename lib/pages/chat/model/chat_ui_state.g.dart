// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatUiStateImpl _$$ChatUiStateImplFromJson(Map<String, dynamic> json) =>
    _$ChatUiStateImpl(
      currentRoom:
          RoomModel.fromJson(json['currentRoom'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ChatUiStateImplToJson(_$ChatUiStateImpl instance) =>
    <String, dynamic>{
      'currentRoom': instance.currentRoom.toJson(),
      'messages': instance.messages.map((e) => e.toJson()).toList(),
    };
