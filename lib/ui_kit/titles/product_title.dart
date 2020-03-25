import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/fonts/app_font_weight.dart';

class ProductTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Blueberry Yaban Mersini 125",
        style: TextStyle(fontWeight: AppFontWeight.medium, fontSize: 16),
      ),
    );
  }
}
