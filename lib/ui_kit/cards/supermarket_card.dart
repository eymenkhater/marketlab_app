import 'package:flutter/material.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SuperMarketPricing(),
            ],
          ),
        ),
        trailing: IconButton(icon: Icon(Icons.add_circle), onPressed: () {}),
      ),
    );
  }
}
