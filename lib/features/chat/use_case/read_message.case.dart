import 'package:flutter_starter/features/chat/repository/chat_repository.dart';
import 'package:flutter_starter/features/chat/repository/chat_repository.if.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'read_message.case.g.dart';

@Riverpod(keepAlive: true)
ReadMessageCase readMessageCase(ReadMessageCaseRef ref) {
  return ReadMessageCase._(ref.read(chatRepositoryProvider));
}

class ReadMessageCase {
  final ChatRepository repository;

  ReadMessageCase._(this.repository);

  Future<bool> call(String id) => repository.readMessage(id);
}
