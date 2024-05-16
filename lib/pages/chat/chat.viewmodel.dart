import 'package:flutter_starter/features/chat/model/message.model.dart';
import 'package:flutter_starter/features/chat/model/room.model.dart';
import 'package:flutter_starter/features/chat/type/chat_room.dart';
import 'package:flutter_starter/features/chat/use_case/add_message.case.dart';
import 'package:flutter_starter/features/chat/use_case/create_room.case.dart';
import 'package:flutter_starter/features/chat/use_case/find_room_by_date.dart';
import 'package:flutter_starter/features/chat/use_case/get_messages.case.dart';
import 'package:flutter_starter/main.dart';
import 'package:flutter_starter/pages/chat/model/chat_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/notification/notification_manager.dart';
import '../../features/chat/use_case/read_message.case.dart';
import '../../l10n/l10n.dart';

part 'chat.viewmodel.g.dart';

@riverpod
class ChatViewModel extends _$ChatViewModel {
  late final _notificationManager = ref.read(notificationManagerProvider);
  late final _getMessages = ref.read(getMessagesCaseProvider);
  late final _addMessage = ref.read(addMessageCaseProvider);
  late final _findRoomByDate = ref.read(findRoomByDateCaseProvider);
  late final _createRoom = ref.read(createRoomCaseProvider);
  late final _readMessage = ref.read(readMessageCaseProvider);

  @override
  ChatUiState build(RoomModel room) {
    loadMessages(room);
    return ChatUiState(currentRoom: room);
  }

  /// Room 메세지 목록 조회
  Future<void> loadMessages(RoomModel room) async {
    logger.d("load messages from room ${room.id}");
    final messages = await _getMessages.call(room.id);
    state = state.copyWith(messages: messages);
  }

  /// 메세지 전송
  Future<void> sendMessage(String text) async {
    // 메세지 추가
    final sendTasks = <Future<MessageModel>>[];
    sendTasks.add(_addMessage.call(roomId: room.id, text: text, isMe: true));
    if (room.id == ChatRoomIds.tomorrowMe.name) {
      sendTasks.add(_sendTomorrow(text));
    }

    // Update state
    final messages = await Future.wait(sendTasks);
    state = state.copyWith(messages: [messages.first, ...state.messages]);
  }

  /// 다음날 메세지 예약
  Future<MessageModel> _sendTomorrow(String text) async {
    final now = DateTime.now();
    final reserved = now.add(const Duration(days: 1));
    RoomModel? existedRoom = await _findRoomByDate(reserved);
    existedRoom ??= await _createRoom(reserve: reserved);
    final saveTask = _addMessage.call(roomId: existedRoom.id, text: text, createdAt: reserved);
    return saveTask.then((message) async {
      _notificationManager
          .schedule(
            duration: reserved.difference(now),
            title: l10n.push_title_from_yesterday,
            body: l10n.push_text_from_yesterday,
          )
          .catchError((err) => logger.e(err.toString()));
      return message;
    });
  }

  /// 메세지 읽음 처리
  void readMessage(String id) {
    final message = state.messages.where((e) => e.id == id).firstOrNull;
    _readMessage(id).then((value) {
      if (message == null) return;
      state = state.copyWith(
        messages: state.messages.map((e) {
          if (e.id == message.id) return message.copyWith(read: true);
          return e;
        }).toList(),
      );
    });
  }
}
