import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/buttons/app_button.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxdecoration.dart';
import 'package:marketlab_app/ui_kit/imagekit/supermarket_image.dart';
import 'package:marketlab_app/ui_kit/titles/supermarket_pricing.dart';

class SuperMarketCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration().defaultCardDecoration,
      child: ListTile(
          leading: SuperMarketImage(),
          title: Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SuperMarketPricing(),
              ],
            ),
          ),
          trailing: AppButton()),
    );
  }
}
