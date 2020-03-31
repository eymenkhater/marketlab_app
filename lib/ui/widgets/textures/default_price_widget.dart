import 'package:flutter/material.dart';
import 'package:marketlab_app/ui/shared/constants/app_font_weight.dart';

class DefaultPriceWidget extends StatelessWidget {
  double _price;
  DefaultPriceWidget(this._price);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "$_price TL",
        style: TextStyle(fontSize: 14, fontWeight: AppFontWeight.bold),
      ),
    );
  }
}
