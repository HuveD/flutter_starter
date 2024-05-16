import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:flutter_starter/features/chat/model/room.model.dart';
import 'package:flutter_starter/pages/chat/chat.viewmodel.dart';
import 'package:flutter_starter/pages/chat/widget/chat.tile.dart';
import 'package:flutter_starter/pages/chat/widget/chat_input.dart';
import 'package:flutter_starter/pages/chat/widget/empty_chat_tooltip.dart';
import 'package:flutter_starter/style/edge_insets.dart';

class ChatPage extends ConsumerStatefulWidget {
  final RoomModel room;

  const ChatPage(this.room, {super.key});

  @override
  ConsumerState createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  late final _vm = ref.read(chatViewModelProvider(widget.room).notifier);
  late final _focus = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chatViewModelProvider(widget.room));
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: TapRegion(
              onTapInside: (_) => _focus.unfocus(),
              child: Builder(builder: (context) {
                if (state.messages.isEmpty) {
                  return Container(
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.only(bottom: 12),
                    child: EmptyChatTooltip(state.currentRoom.id),
                  );
                }
                return ListView.separated(
                  reverse: true,
                  padding: MeEdgeInsets.h24v12,
                  itemCount: state.messages.length,
                  separatorBuilder: (_, __) => const Gap(24),
                  itemBuilder: (_, index) {
                    final message = state.messages[index];
                    if (!message.read) _vm.readMessage(message.id);
                    return ChatTile(
                      nextChatDate: index == state.messages.length - 1 ? null : state.messages[index + 1].createdAt,
                      message: message,
                    );
                  },
                );
              }),
            ),
          ),
          ChatInput(
            focusNode: _focus,
            onSubmit: (String message) => _vm.sendMessage(message),
          ),
          Gap(MediaQuery.of(context).viewPadding.bottom),
        ],
      ),
    );
  }
}
