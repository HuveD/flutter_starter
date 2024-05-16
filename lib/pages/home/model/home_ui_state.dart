import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_starter/features/chat/model/room.model.dart';

part 'home_ui_state.freezed.dart';
part 'home_ui_state.g.dart';

@freezed
class HomeUiState with _$HomeUiState {
  @JsonSerializable(explicitToJson: true)
  const factory HomeUiState({
    required RoomModel currentRoom,
    @Default([]) List<RoomModel> rooms,
  }) = _HomeUiState;

  factory HomeUiState.fromJson(Map<String, dynamic> json) => _$HomeUiStateFromJson(json);
}
