import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_starter/features/chat/model/room.model.dart';
import 'package:flutter_starter/gen/assets.gen.dart';
import 'package:flutter_starter/style/edge_insets.dart';

import '../../../gen/colors.gen.dart';
import '../../../style/divider.dart';
import '../../../style/text_style.dart';
import 'drawer.tile.dart';

class RoomListView extends StatelessWidget {
  final List<RoomModel> rooms;
  final RoomModel? selectedRoom;
  final void Function(RoomModel) onSelectedRoom;

  const RoomListView({
    super.key,
    required this.rooms,
    required this.selectedRoom,
    required this.onSelectedRoom,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: MeEdgeInsets.h16,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        final showHeader = _isShowHeader(index);
        final room = rooms[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showHeader)
              Padding(
                padding: const EdgeInsets.only(bottom: 4, top: 12),
                child: Row(
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: Assets.icons.icTriangleToggle.svg(
                        colorFilter: const ColorFilter.mode(
                          ColorName.fontGray,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    Text(
                      DateFormat("yyyy.MM").format(room.createdAt),
                      style: MeTextStyle.robotoB12_1_4.copyWith(color: ColorName.fontGray),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: MeEdgeInsets.h12,
              child: DrawerTile(
                badge: room.hasUnreadMessage,
                selected: room.id == selectedRoom?.id,
                title: room.titleWithDefault,
                onTap: () => onSelectedRoom(room),
              ),
            ),
          ],
        );
      },
      separatorBuilder: (_, index) => Padding(
        padding: _isShowHeader(index + 1) ? MeEdgeInsets.zero : MeEdgeInsets.h12,
        child: MeDivider.horizontal,
      ),
      itemCount: rooms.length,
    );
  }

  /// 헤더 표시 여부
  bool _isShowHeader(int index) {
    if (index == 0) return true;
    final currentRoom = rooms[index];
    final lastRoom = rooms[index - 1];
    // 이전 항목과 비교하여 날짜(연도, 월)가 다른 경우만 표시
    return (currentRoom.createdAt.year != lastRoom.createdAt.year) ||
        (currentRoom.createdAt.month != lastRoom.createdAt.month);
  }
}
