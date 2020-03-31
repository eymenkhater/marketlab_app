import 'package:flutter/material.dart';
import 'package:marketlab_app/ui/shared/constants/app_font_weight.dart';

class ListingPriceWidget extends StatelessWidget {
  final double _price;
  ListingPriceWidget(this._price);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "$_price TL",
        style: TextStyle(fontSize: 20, fontWeight: AppFontWeight.bold),
      ),
    );
  }
}
