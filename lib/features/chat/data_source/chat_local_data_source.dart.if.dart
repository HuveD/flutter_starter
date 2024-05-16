import 'package:flutter_starter/features/chat/entity/message.entity.dart';

import '../entity/room.entity.dart';

abstract class ChatLocalDataSource {
  Future<List<RoomEntity>> getRooms();

  Future<RoomEntity> createRoom(RoomEntity room);

  Future<void> deleteRoom(String roomId);

  Future<List<MessageEntity>> getMessages(String roomId);

  Future<bool> hasUnreadMessage(String roomId);

  Future<MessageEntity> addMessage(MessageEntity message);

  Future<bool> readMessage(String messageId);

  Future<void> deleteMessage(String messageId);

  Future<RoomEntity?> findRoomByDate(DateTime date);
}
