import 'package:flutter_starter/features/chat/entity/room.entity.dart';

import '../entity/message.entity.dart';

abstract class ChatRepository {
  Future<List<RoomEntity>> getRooms();

  Future<RoomEntity> createRoom(RoomEntity room);

  Future<RoomEntity?> findRoomByDate(DateTime date);

  Future<bool> hasUnreadMessage(String roomId);

  Future<bool> readMessage(String messageId);

  Future<List<MessageEntity>> getMessages(String roomId);

  Future<MessageEntity> addMessage(MessageEntity message);
}
