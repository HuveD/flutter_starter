import 'package:isar/isar.dart';
import 'package:flutter_starter/core/extension/datetime.ext.dart';
import 'package:flutter_starter/features/chat/entity/message.entity.dart';
import 'package:flutter_starter/features/chat/entity/room.entity.dart';
import 'package:flutter_starter/interfaces/database/local_database.dart';
import 'package:flutter_starter/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'chat_local_data_source.dart.if.dart';

part 'chat_local_data_source.g.dart';

@Riverpod(keepAlive: true)
ChatLocalDataSource chatLocalDataSource(ChatLocalDataSourceRef ref) {
  return _ChatLocalDataSource();
}

class _ChatLocalDataSource extends ChatLocalDataSource {
  @override
  Future<MessageEntity> addMessage(MessageEntity message) async {
    await LocalDatabase.write((db) => db.messageEntitys.put(message));
    return message;
  }

  @override
  Future<RoomEntity> createRoom(RoomEntity room) async {
    await LocalDatabase.write((db) => db.roomEntitys.put(room));
    return room;
  }

  @override
  Future<void> deleteMessage(String messageId) {
    return LocalDatabase.write((db) async {
      await db.messageEntitys.filter().idEqualTo(messageId).deleteAll();
    });
  }

  @override
  Future<void> deleteRoom(String roomId) {
    return LocalDatabase.write((db) async {
      await db.roomEntitys.filter().idEqualTo(roomId).deleteAll();
    });
  }

  @override
  Future<List<MessageEntity>> getMessages(String roomId) {
    return LocalDatabase.instance.messageEntitys
        .filter()
        .roomIdEqualTo(roomId)
        .createdAtLessThan(DateTime.now().toUtc())
        .sortByCreatedAtDesc()
        .findAll();
  }

  @override
  Future<bool> readMessage(String messageId) async {
    final message = await LocalDatabase.instance.messageEntitys.filter().idEqualTo(messageId).findFirst();
    if (message == null) return false;
    await LocalDatabase.write((db) => db.messageEntitys.put(message.copyWith(read: true)));
    return true;
  }

  @override
  Future<List<RoomEntity>> getRooms() {
    return LocalDatabase.instance.roomEntitys
        .filter()
        .createdAtLessThan(DateTime.now().toUtc())
        .sortByCreatedAtDesc()
        .findAll();
  }

  @override
  Future<RoomEntity?> findRoomByDate(DateTime date) {
    final startOfDay = date.startOfDay;
    final endOfDay = date.endOfDay;
    logger.d('findRoomByDate $startOfDay ~ $endOfDay');
    return LocalDatabase.instance.roomEntitys
        .filter()
        .createdAtBetween(
          startOfDay.toUtc(),
          endOfDay.toUtc(),
          includeUpper: false,
        )
        .findFirst();
  }

  @override
  Future<bool> hasUnreadMessage(String roomId) {
    return LocalDatabase.instance.messageEntitys.filter().roomIdEqualTo(roomId).and().readEqualTo(false).isNotEmpty();
  }
}
