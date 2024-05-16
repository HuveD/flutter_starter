import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_starter/style/border_radius.dart';
import 'package:flutter_starter/style/text_style.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class ChatInput extends StatefulWidget {
  final FocusNode? focusNode;
  final Future<void> Function(String text) onSubmit;

  const ChatInput({
    super.key,
    required this.onSubmit,
    this.focusNode,
  });

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  late final _controller = TextEditingController();
  late bool _showSendButton = false;

  @override
  void initState() {
    _controller.addListener(() {
      if (!_showSendButton && _controller.text.isNotEmpty) {
        setState(() => _showSendButton = true);
      }
      if (_showSendButton && _controller.text.isEmpty) {
        setState(() => _showSendButton = false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    widget.focusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: MeBorderRadius.all18,
        border: Border.all(color: ColorName.lineGray, width: 1),
      ),
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      padding: const EdgeInsets.all(3),
      child: IntrinsicHeight(
        child: Row(
          children: [
            const Gap(8),
            Expanded(
              child: TextField(
                focusNode: widget.focusNode,
                controller: _controller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                  hintText: "Message",
                  hintStyle: MeTextStyle.robotoR16_1_4,
                  enabledBorder: _inputBorder,
                  focusedBorder: _inputBorder,
                  errorBorder: _inputBorder,
                  border: _inputBorder,
                ),
                minLines: 1,
                maxLines: 5,
                textInputAction: TextInputAction.newline,
              ),
            ),
            const Gap(8),
            Opacity(
              opacity: _showSendButton ? 1 : 0,
              child: Container(
                height: double.infinity,
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  borderRadius: MeBorderRadius.all18,
                  child: Assets.icons.icSend.svg(),
                  onTap: () {
                    if (_showSendButton) {
                      widget.onSubmit(_controller.text).then((value) {
                        _controller.clear();
                      });
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputBorder get _inputBorder {
    return InputBorder.none;
  }
}
