import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxdecoration.dart';
import 'package:marketlab_app/ui_kit/forms/text_field_counter.dart';
import 'package:marketlab_app/ui_kit/imagekit/market_image.dart';
import 'package:marketlab_app/ui_kit/titles/market_price.dart';
import 'package:marketlab_app/widgets/basket_input_widget.dart';

class MarketCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration().defaultCardDecoration,
      child: ListTile(
        leading: MarketImage(),
        title: Container(
          child: MarketPrice(),
        ),
        trailing: TextFieldCounter(),
      ),
      // IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {}),
    );
  }
}
