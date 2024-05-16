import 'package:flutter_starter/features/chat/data_source/chat_local_data_source.dart';
import 'package:flutter_starter/features/chat/entity/message.entity.dart';
import 'package:flutter_starter/features/chat/entity/room.entity.dart';
import 'package:flutter_starter/features/chat/repository/chat_repository.if.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data_source/chat_local_data_source.dart.if.dart';

part 'chat_repository.g.dart';

@Riverpod(keepAlive: true)
ChatRepository chatRepository(ChatRepositoryRef ref) {
  return _ChatRepositoryImpl(ref.read(chatLocalDataSourceProvider));
}

class _ChatRepositoryImpl implements ChatRepository {
  final ChatLocalDataSource _source; //
  _ChatRepositoryImpl(this._source);

  @override
  Future<RoomEntity> createRoom(RoomEntity room) {
    return _source.createRoom(room);
  }

  @override
  Future<List<RoomEntity>> getRooms() {
    return _source.getRooms();
  }

  @override
  Future<RoomEntity?> findRoomByDate(DateTime date) {
    return _source.findRoomByDate(date);
  }

  @override
  Future<MessageEntity> addMessage(MessageEntity message) {
    return _source.addMessage(message);
  }

  @override
  Future<List<MessageEntity>> getMessages(String roomId) {
    return _source.getMessages(roomId);
  }

  @override
  Future<bool> readMessage(String messageId) {
    return _source.readMessage(messageId);
  }

  @override
  Future<bool> hasUnreadMessage(String roomId) {
    return _source.hasUnreadMessage(roomId);
  }
}
