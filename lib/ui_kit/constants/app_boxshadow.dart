import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/constants/app_colors.dart';

class AppBoxShadow {
  BoxShadow defaulBoxShadow() {
    return BoxShadow(
      color: AppColors.boxBgPanda,
      offset: new Offset(1, 1.0),
      blurRadius: 1.0,
    );
  }
}
