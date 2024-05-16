import 'package:flutter_starter/features/chat/model/room.model.dart';
import 'package:flutter_starter/l10n/l10n.dart';

enum ChatRoomIds {
  tomorrowMe,
  memo,
}

extension UniqueChatRoomExt on ChatRoomIds {
  String get name {
    switch (this) {
      case ChatRoomIds.tomorrowMe:
        return 'tomorrow_me';
      case ChatRoomIds.memo:
        return 'memo';
    }
  }

  RoomModel get room {
    RoomModel room = RoomModel(
      id: name,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    switch (this) {
      case ChatRoomIds.tomorrowMe:
        return room.copyWith(title: l10n.menu_tomorrow_me);
      case ChatRoomIds.memo:
        return room.copyWith(title: l10n.menu_memo);
    }
  }
}
