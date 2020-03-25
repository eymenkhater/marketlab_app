import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/fonts/app_font_weight.dart';

class ProductMarketTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Blueberry Yaban Mersini 125",
      style: TextStyle(
        fontWeight: AppFontWeight.bold,
        fontSize: 14,
      ),
    );
  }
}
