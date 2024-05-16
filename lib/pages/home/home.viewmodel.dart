import 'package:flutter_starter/features/chat/type/chat_room.dart';
import 'package:flutter_starter/features/chat/use_case/get_rooms.case.dart';
import 'package:flutter_starter/pages/home/model/home_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/chat/model/room.model.dart';

part 'home.viewmodel.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  late final _getRoom = ref.read(getRoomsCaseProvider);

  @override
  HomeUiState build() {
    loadRooms();
    return HomeUiState(currentRoom: ChatRoomIds.tomorrowMe.room);
  }

  /// Room 목록 조회
  Future<void> loadRooms() async {
    final rooms = await _getRoom.call();
    state = state.copyWith(rooms: rooms);
  }

  /// 현재 채팅방 변경
  set currentRoom(RoomModel room) {
    state = state.copyWith(currentRoom: room);
  }
}
