import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/message.model.dart';
import '../repository/chat_repository.dart';
import '../repository/chat_repository.if.dart';

part 'get_messages.case.g.dart';

@Riverpod(keepAlive: true)
GetMessagesCase getMessagesCase(GetMessagesCaseRef ref) {
  return GetMessagesCase(ref.read(chatRepositoryProvider));
}

class GetMessagesCase {
  final ChatRepository _repo;

  GetMessagesCase(this._repo);

  Future<List<MessageModel>> call(String roomId) {
    return _repo.getMessages(roomId).then((messages) {
      return [...messages.map((message) => MessageModel.fromEntity(message))];
    });
  }
}
