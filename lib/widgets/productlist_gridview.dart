import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/cards/product_card.dart';

class ProductListGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ProductCard(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ProductCard(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ProductCard(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ProductCard(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ProductCard(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ProductCard(),
            ),
          ],
        ),
      ),
    );
  }
}
