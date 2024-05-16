import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:flutter_starter/features/chat/model/message.model.dart';
import 'package:flutter_starter/style/divider.dart';
import 'package:flutter_starter/style/edge_insets.dart';
import 'package:flutter_starter/style/text_style.dart';

import '../../../gen/colors.gen.dart';

class ChatTile extends StatelessWidget {
  final DateTime? nextChatDate;
  final MessageModel message;

  const ChatTile({super.key, required this.message, this.nextChatDate});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: _crossAxisAlignment,
      children: [
        // 날짜 헤더
        if (_showHeader) ...[
          Row(
            children: [
              Expanded(child: MeDivider.horizontal),
              Padding(
                padding: MeEdgeInsets.h24,
                child: Text(_date, style: MeTextStyle.robotoR12_1_4.copyWith(color: ColorName.fontGray)),
              ),
              Expanded(child: MeDivider.horizontal),
            ],
          ),
          const Gap(24),
        ],

        // 닉네임 & 시간
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: _indicatorColor),
              width: 8,
              height: 8,
            ),
            const Gap(8),
            Text("YOU", style: MeTextStyle.robotoB16_1_4),
            const Gap(8),
            Text(_time, style: MeTextStyle.robotoR12_1_4.copyWith(color: ColorName.fontGray)),
          ],
        ),
        const Gap(8),

        // 내용
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [Flexible(child: Text(message.text, style: MeTextStyle.robotoR16_1_4))],
        ),
      ],
    );
  }

  /// 이전 채팅에서 날짜가 변경된 경우 헤더 표시
  bool get _showHeader {
    if (nextChatDate == null) return true;
    return message.createdAt.day > nextChatDate!.day && message.createdAt.isAfter(nextChatDate!);
  }

  String get _date {
    return DateFormat('yyyy.MM.dd').format(message.createdAt);
  }

  String get _time {
    return DateFormat('a hh:mm').format(message.createdAt);
  }

  Color get _indicatorColor {
    return message.isMe ? ColorName.planetGreen : ColorName.fontGray;
  }

  CrossAxisAlignment get _crossAxisAlignment {
    return message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
  }
}
