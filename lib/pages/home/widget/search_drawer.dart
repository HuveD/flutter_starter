import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_starter/gen/colors.gen.dart';
import 'package:flutter_starter/style/border_radius.dart';
import 'package:flutter_starter/style/edge_insets.dart';
import 'package:flutter_starter/style/snack_bar.dart';
import 'package:flutter_starter/style/text_style.dart';

import '../../../gen/assets.gen.dart';
import '../../../l10n/l10n.dart';

class SearchDrawer extends StatelessWidget {
  const SearchDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(borderRadius: MeBorderRadius.all12, color: ColorName.planetGray),
        constraints: const BoxConstraints(minHeight: 28),
        padding: MeEdgeInsets.h12v4,
        child: Row(
          children: [
            Assets.icons.icSearch.svg(),
            const Gap(4),
            Text('Search', style: MeTextStyle.robotoR14_1_4.copyWith(color: ColorName.fontGray)),
          ],
        ),
      ),
      onTap: () {
        context.pop();
        MeSnackBar.show(content: l10n.preparing_feature);
      },
    );
  }
}
