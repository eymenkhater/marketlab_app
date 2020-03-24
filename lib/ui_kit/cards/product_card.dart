import 'package:flutter/material.dart';
import 'package:marketlab_app/models/product.dart';
import 'package:marketlab_app/ui_kit/buttons/app_button.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxshadow.dart';
import 'package:marketlab_app/ui_kit/imagekit/product_list_image.dart';
import 'package:marketlab_app/ui_kit/titles/product_pricing.dart';
import 'package:marketlab_app/ui_kit/titles/product_supermarketing.dart';
import 'package:marketlab_app/ui_kit/titles/product_title.dart';

class ProductCard extends StatelessWidget {
  final Product model;
  ProductCard({Key key, this.model}) : super(key: key);
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
                  ProductTitle(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ProductPricing(),
                      SizedBox(width: 10),
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
