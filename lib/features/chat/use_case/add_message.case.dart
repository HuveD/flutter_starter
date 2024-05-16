import 'package:cuid2/cuid2.dart';
import 'package:flutter_starter/features/chat/entity/message.entity.dart';
import 'package:flutter_starter/features/chat/model/message.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/chat_repository.dart';
import '../repository/chat_repository.if.dart';

part 'add_message.case.g.dart';

@Riverpod(keepAlive: true)
AddMessageCase addMessageCase(AddMessageCaseRef ref) {
  return AddMessageCase(ref.read(chatRepositoryProvider));
}

class AddMessageCase {
  final ChatRepository _repo;

  AddMessageCase(this._repo);

  Future<MessageModel> call({
    required String roomId,
    required String text,
    bool isMe = false,
    DateTime? createdAt,
  }) {
    final res = _repo.addMessage(MessageEntity(
      id: cuid(),
      createdAt: (createdAt ?? DateTime.now()).toUtc(),
      roomId: roomId,
      text: text,
      isMe: isMe,
      read: isMe,
    ));
    return res.then((entity) => MessageModel.fromEntity(entity));
  }
}
