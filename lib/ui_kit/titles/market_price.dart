import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/fonts/app_font_weight.dart';

class MarketPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "23,80 TL",
        style: TextStyle(
          fontSize: 20,
          fontWeight: AppFontWeight.bold,
        ),
      ),
    );
  }
}
