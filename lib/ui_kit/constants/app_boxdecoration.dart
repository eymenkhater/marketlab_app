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
}
