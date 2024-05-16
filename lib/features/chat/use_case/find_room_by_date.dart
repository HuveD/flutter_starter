import 'package:flutter_starter/features/chat/model/room.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/chat_repository.dart';
import '../repository/chat_repository.if.dart';

part 'find_room_by_date.g.dart';

@Riverpod(keepAlive: true)
FindRoomByDateCase findRoomByDateCase(FindRoomByDateCaseRef ref) {
  return FindRoomByDateCase(ref.read(chatRepositoryProvider));
}

class FindRoomByDateCase {
  final ChatRepository _repo;

  FindRoomByDateCase(this._repo);

  Future<RoomModel?> call(DateTime dateTime) async {
    final roomEntity = await _repo.findRoomByDate(dateTime);
    if (roomEntity == null) return null;
    return _repo.hasUnreadMessage(roomEntity.id).then((hasUnread) {
      return RoomModel.fromEntity(
        entity: roomEntity,
        hasUnreadMessage: hasUnread,
      );
    });
  }
}
