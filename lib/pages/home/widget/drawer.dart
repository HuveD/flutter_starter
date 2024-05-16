import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:flutter_starter/features/chat/model/room.model.dart';
import 'package:flutter_starter/features/chat/type/chat_room.dart';
import 'package:flutter_starter/l10n/l10n.dart';
import 'package:flutter_starter/pages/home/widget/drawer.tile.dart';
import 'package:flutter_starter/pages/home/widget/room_list.dart';
import 'package:flutter_starter/pages/home/widget/search_drawer.dart';
import 'package:flutter_starter/style/divider.dart';
import 'package:flutter_starter/style/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../style/edge_insets.dart';

class HomeDrawer extends ConsumerWidget {
  final List<RoomModel> rooms;
  final RoomModel selectedRoom;
  final void Function(RoomModel) onSelectedRoom;

  HomeDrawer({
    super.key,
    required this.onSelectedRoom,
    this.rooms = const [],
    RoomModel? selectedRoom,
  }) : selectedRoom = selectedRoom ?? ChatRoomIds.tomorrowMe.room;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewPadding = MeEdgeInsets.viewPadding(context);
    return Drawer(
      surfaceTintColor: ColorName.white,
      backgroundColor: ColorName.white,
      shape: const BeveledRectangleBorder(),
      child: Column(
        children: [
          ListView(
            padding: MeEdgeInsets.h16,
            shrinkWrap: true,
            children: [
              Gap(24 + viewPadding.top),
              const SearchDrawer(),
              const Gap(12),
              DrawerTile(
                selected: ChatRoomIds.tomorrowMe.room.id == selectedRoom.id,
                icon: Assets.icons.icLetter.svg(),
                title: l10n.menu_tomorrow_me,
                onTap: () => onSelectedRoom(ChatRoomIds.tomorrowMe.room),
              ),
              const Gap(8),
              DrawerTile(
                selected: ChatRoomIds.memo.room.id == selectedRoom.id,
                icon: Assets.icons.icBookmark.svg(),
                title: l10n.menu_memo,
                onTap: () => onSelectedRoom(ChatRoomIds.memo.room),
              ),
              const Gap(12),
              MeDivider.horizontal,
            ],
          ),
          Expanded(
            child: RoomListView(
              rooms: rooms,
              selectedRoom: selectedRoom,
              onSelectedRoom: onSelectedRoom,
            ),
          ),
          GestureDetector(
            onTap: () {
              launchUrl(
                Uri.parse('https://planetfru.notion.site/Open-Source-License-95568dce77904dbf9c424a791bb6c0bc'),
                mode: LaunchMode.externalApplication,
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24, top: 10),
              child: Text(
                l10n.opensource_license,
                style: MeTextStyle.robotoB12_1_4.copyWith(color: ColorName.fontGray),
              ),
            ),
          ),
          Gap(viewPadding.bottom),
        ],
      ),
    );
  }
}
