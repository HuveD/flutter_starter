// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeUiStateImpl _$$HomeUiStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeUiStateImpl(
      currentRoom:
          RoomModel.fromJson(json['currentRoom'] as Map<String, dynamic>),
      rooms: (json['rooms'] as List<dynamic>?)
              ?.map((e) => RoomModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeUiStateImplToJson(_$HomeUiStateImpl instance) =>
    <String, dynamic>{
      'currentRoom': instance.currentRoom.toJson(),
      'rooms': instance.rooms.map((e) => e.toJson()).toList(),
    };
