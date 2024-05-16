import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_starter/features/chat/model/message.model.dart';
import 'package:flutter_starter/features/chat/model/room.model.dart';

part 'chat_ui_state.freezed.dart';
part 'chat_ui_state.g.dart';

@freezed
class ChatUiState with _$ChatUiState {
  @JsonSerializable(explicitToJson: true)
  const factory ChatUiState({
    required RoomModel currentRoom,
    @Default([]) List<MessageModel> messages,
  }) = _ChatUiState;

  factory ChatUiState.fromJson(Map<String, dynamic> json) => _$ChatUiStateFromJson(json);
}
