import 'package:flutter/material.dart';
import 'package:flutter_starter/gen/colors.gen.dart';

class MeDivider {
  static Widget get horizontal {
    return Divider(
      color: ColorName.lineGray.withOpacity(0.35),
      height: 1,
      thickness: 1,
    );
  }

  static Widget get vertical {
    return VerticalDivider(
      color: ColorName.lineGray.withOpacity(0.35),
      width: 1,
      thickness: 1,
    );
  }
}
