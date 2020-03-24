import 'package:flutter/material.dart';
import 'package:marketlab_app/models/product.dart';
import 'package:marketlab_app/screens/home.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxshadow.dart';
import 'package:marketlab_app/ui_kit/imagekit/product_list_image.dart';
import 'package:marketlab_app/ui_kit/titles/product_search_pricing.dart';
import 'package:marketlab_app/ui_kit/titles/product_supermarketing.dart';
import 'package:marketlab_app/ui_kit/titles/product_title.dart';

class ProductSearchView extends StatelessWidget {
  final Product model;
  ProductSearchView({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: [AppBoxShadow().defaulBoxShadow()],
      ),
      child: ListTile(
        leading: ProductListImage(),
        title: Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ProductTitle(),
              ProductSearchPricing(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: ProductSuperMarketing(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: ProductSuperMarketing(),
                  ),
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
        },
      ),
    );
  }
}
