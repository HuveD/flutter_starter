import 'package:flutter/material.dart';
import 'package:flutter_starter/features/chat/type/chat_room.dart';
import 'package:flutter_starter/gen/colors.gen.dart';
import 'package:flutter_starter/style/text_style.dart';

import '../../../l10n/l10n.dart';

class EmptyChatTooltip extends StatelessWidget {
  final String roomId;

  const EmptyChatTooltip(this.roomId, {super.key});

  @override
  Widget build(BuildContext context) {
    if (ChatRoomIds.tomorrowMe.room.id == roomId) {
      return Text(
        l10n.tomorrow_me_tip,
        style: MeTextStyle.robotoB12_1_4.copyWith(color: ColorName.fontGray),
        textAlign: TextAlign.center,
      );
    } else if (ChatRoomIds.memo.room.id == roomId) {
      return Text(
        l10n.notepad_tip,
        style: MeTextStyle.robotoB12_1_4.copyWith(color: ColorName.fontGray),
        textAlign: TextAlign.center,
      );
    }
    return const SizedBox();
  }
}
