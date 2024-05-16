import 'package:flutter/material.dart';
import 'package:flutter_starter/main.dart';
import 'package:flutter_starter/style/border_radius.dart';
import 'package:flutter_starter/style/shadow.dart';
import 'package:flutter_starter/style/text_style.dart';

import '../gen/colors.gen.dart';

class MeSnackBar {
  /// 스낵바 표시
  static void show({
    required String content,
    BuildContext? context,
    void Function()? pressed,
    String? label,
    Duration? duration,
    EdgeInsets? margin,
    Color? background,
    Color? fontColor,
  }) {
    final snackBar = SnackBar(
      duration: label == null ? duration ?? const Duration(seconds: 4) : duration ?? const Duration(seconds: 8),
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      margin: margin ?? const EdgeInsets.all(24),
      padding: EdgeInsets.zero,
      elevation: 0,
      content: Center(
        child: Container(
          decoration: BoxDecoration(
            color: background ?? ColorName.planetBlack,
            borderRadius: MeBorderRadius.all12,
            boxShadow: MeShadow.snackBar,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                    bottom: 12,
                    right: label != null ? 0.0 : 18.0,
                    left: 18,
                  ),
                  child: Text(content, style: MeTextStyle.robotoR14_1_4.copyWith(color: fontColor ?? ColorName.white)),
                ),
              ),
              if (label != null)
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12, right: 18, left: 12),
                    child: Text(label, style: MeTextStyle.robotoB14_1_4.copyWith(color: Colors.amber)),
                  ),
                  onTap: () {
                    if (pressed != null) {
                      pressed.call();
                    }
                    hide();
                  },
                ),
            ],
          ),
        ),
      ),
    );

    // 이전 스낵바가 보이지 않도록 숨김.
    hide();

    // 스낵바 표시
    ScaffoldMessenger.of(FlutterStarterApp.navKey.currentContext!).showSnackBar(snackBar);
  }

  /// 스낵바 숨기기
  static void hide() {
    ScaffoldMessenger.of(FlutterStarterApp.navKey.currentContext!).hideCurrentSnackBar();
  }
}
