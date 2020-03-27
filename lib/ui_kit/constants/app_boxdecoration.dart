import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxshadow.dart';

class AppBoxDecoration {
  Decoration defaultCardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
    boxShadow: [AppBoxShadow().defaulBoxShadow()],
  );
  Decoration defaultModalDecoration(Color color) => BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(36),
          topRight: const Radius.circular(36),
        ),
        boxShadow: [AppBoxShadow().defaulBoxShadow()],
      );
}
