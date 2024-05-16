import 'package:flutter/material.dart';

class MeEdgeInsets {
  static EdgeInsets viewPadding(BuildContext context) {
    final padding = MediaQuery.of(context).viewPadding;
    return EdgeInsets.fromLTRB(padding.left, padding.top, padding.right, padding.bottom);
  }

  static const zero = EdgeInsets.zero;

  static const h20 = EdgeInsets.symmetric(horizontal: 20);
  static const h24 = EdgeInsets.symmetric(horizontal: 24);
  static const h16 = EdgeInsets.symmetric(horizontal: 16);
  static const h12 = EdgeInsets.symmetric(horizontal: 12);

  static const v4 = EdgeInsets.symmetric(vertical: 4);

  static const h8v4 = EdgeInsets.symmetric(horizontal: 8, vertical: 4);
  static const h12v4 = EdgeInsets.symmetric(horizontal: 12, vertical: 4);
  static const h16v24 = EdgeInsets.symmetric(horizontal: 16, vertical: 24);
  static const h24v12 = EdgeInsets.symmetric(horizontal: 24, vertical: 12);
}
