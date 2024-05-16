import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../style/text_style.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function() onMenuTap;
  final String title;

  const HomeAppBar({
    super.key,
    required this.title,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        margin: const EdgeInsets.only(left: 12),
        child: Center(
          child: InkWell(
            borderRadius: BorderRadius.circular(60),
            highlightColor: ColorName.lightGray,
            onTap: onMenuTap,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Assets.icons.icMenu.svg(),
            ),
          ),
        ),
      ),
      title: Text(title, style: MeTextStyle.robotoB16_1_4),
      leadingWidth: 22 + 24 + 12,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
