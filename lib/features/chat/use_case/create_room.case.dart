import 'package:flutter_starter/features/chat/entity/room.entity.dart';
import 'package:flutter_starter/features/chat/model/room.model.dart';
import 'package:flutter_starter/features/chat/repository/chat_repository.dart';
import 'package:flutter_starter/features/chat/repository/chat_repository.if.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_room.case.g.dart';

@Riverpod(keepAlive: true)
CreateRoomCase createRoomCase(CreateRoomCaseRef ref) {
  return CreateRoomCase(ref.read(chatRepositoryProvider));
}

class CreateRoomCase {
  final ChatRepository _repo;

  CreateRoomCase(this._repo);

  Future<RoomModel> call({DateTime? reserve}) {
    RoomEntity entity = RoomEntity.create(createdAt: reserve ?? DateTime.now());
    return _repo.createRoom(entity).then((_) {
      return RoomModel.fromEntity(
        entity: entity,
        hasUnreadMessage: false,
      );
    });
  }
}
