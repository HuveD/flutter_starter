import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_starter/gen/colors.gen.dart';
import 'package:flutter_starter/style/border_radius.dart';
import 'package:flutter_starter/style/edge_insets.dart';
import 'package:flutter_starter/style/text_style.dart';

class DrawerTile extends StatelessWidget {
  final Widget? icon;
  final bool selected;
  final String title;
  final bool badge;
  final void Function() onTap;

  const DrawerTile({
    super.key,
    required this.title,
    required this.onTap,
    this.selected = false,
    this.badge = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: ColorName.lightGray,
      borderRadius: MeBorderRadius.all8,
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minHeight: 36),
        padding: MeEdgeInsets.h8v4,
        decoration: BoxDecoration(
          borderRadius: MeBorderRadius.all8,
          color: selected ? ColorName.lightGray : null,
        ),
        child: Row(
          children: [
            if (icon != null) ...[icon!, const Gap(4)],
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      style: MeTextStyle.robotoR16_1_4,
                    ),
                  ),
                  if (badge)
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorName.planetPeach,
                      ),
                      width: 4,
                      height: 4,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
