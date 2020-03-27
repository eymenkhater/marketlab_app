import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/imagekit/product_image.dart';

class ProductMarketInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: AppBoxDecoration().defaultCardDecoration,
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 2.5,
              child: ProductImage(),
            ),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
