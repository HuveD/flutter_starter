import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_starter/features/chat/entity/message.entity.dart';

part 'message.model.freezed.dart';
part 'message.model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  @JsonSerializable(explicitToJson: true)
  const factory MessageModel({
    required String id,
    required String roomId,
    @Default('') String text,
    @Default(false) bool isMe,
    @Default(false) bool read,
    required DateTime createdAt,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

  factory MessageModel.fromEntity(MessageEntity entity) {
    return MessageModel(
      id: entity.id,
      roomId: entity.roomId,
      text: entity.text,
      isMe: entity.isMe,
      read: entity.read,
      createdAt: entity.createdAt.toLocal(),
    );
  }
}
