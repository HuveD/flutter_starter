import 'package:flutter_starter/features/chat/model/room.model.dart';
import 'package:flutter_starter/features/chat/repository/chat_repository.dart';
import 'package:flutter_starter/features/chat/repository/chat_repository.if.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_rooms.case.g.dart';

@Riverpod(keepAlive: true)
GetRoomsCase getRoomsCase(GetRoomsCaseRef ref) {
  return GetRoomsCase(ref.read(chatRepositoryProvider));
}

class GetRoomsCase {
  final ChatRepository _repo;

  GetRoomsCase(this._repo);

  Future<List<RoomModel>> call() {
    return _repo.getRooms().then((rooms) {
      return Future.wait(
        rooms.map(
          (room) => _repo.hasUnreadMessage(room.id).then((hasUnread) {
            return RoomModel.fromEntity(
              entity: room,
              hasUnreadMessage: hasUnread,
            );
          }),
        ),
      );
    });
  }
}
