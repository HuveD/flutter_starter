import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../../core/util/fast_int_hash.dart';

part 'message.entity.freezed.dart';
part 'message.entity.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class MessageEntity with _$MessageEntity {
  const MessageEntity._();

  @JsonSerializable(explicitToJson: true)
  const factory MessageEntity({
    required String id,
    required String roomId,
    required String text,
    required DateTime createdAt,
    @Default(false) bool isMe,
    @Default(false) bool read,
  }) = _MessageEntity;

  Id get isarId => fastHash(id);

  factory MessageEntity.fromJson(Map<String, dynamic> json) => _$MessageEntityFromJson(json);
}
