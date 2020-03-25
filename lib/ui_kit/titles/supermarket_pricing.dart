import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/fonts/app_font_weight.dart';

class SuperMarketPricing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "29,90 TL",
      style: TextStyle(
        fontWeight: AppFontWeight.bold,
        fontSize: 14,
      ),
    );
  }
}
