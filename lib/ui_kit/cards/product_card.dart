import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/buttons/app_button.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxshadow.dart';
import 'package:marketlab_app/ui_kit/imagekit/product_list_image.dart';
import 'package:marketlab_app/ui_kit/titles/product_pricing.dart';
import 'package:marketlab_app/ui_kit/titles/product_supermarketing.dart';
import 'package:marketlab_app/ui_kit/titles/product_titling.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        height: 120,
        child: Row(
          children: <Widget>[
            ProductListImage(),
            Container(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ProductTitling(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ProductPricing(),
                      ProductSuperMarketing(),
                    ],
                  ),
                  AppButton(),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: [AppBoxShadow().defaulBoxShadow()],
        ),
      ),
    );
  }
}
