import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:flutter_starter/l10n/l10n.dart';

import '../entity/room.entity.dart';

part 'room.model.freezed.dart';
part 'room.model.g.dart';

@freezed
class RoomModel with _$RoomModel {
  const RoomModel._();

  @JsonSerializable(explicitToJson: true)
  const factory RoomModel({
    required String id,
    String? title,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(false) bool hasUnreadMessage,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  factory RoomModel.fromEntity({
    required RoomEntity entity,
    required bool hasUnreadMessage,
  }) {
    return RoomModel(
      id: entity.id,
      title: entity.title,
      createdAt: entity.createdAt.toLocal(),
      updatedAt: entity.updatedAt.toLocal(),
      hasUnreadMessage: hasUnreadMessage,
    );
  }

  String get titleWithDefault {
    return title ??
        DateFormat(
          l10n.menu_note_date_format,
          l10n.localeName,
        ).format(createdAt);
  }
}
