import 'package:flutter/material.dart';
import 'package:marketlab_app/models/product.dart';
import 'package:marketlab_app/screens/product_market.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxdecoration.dart';
import 'package:marketlab_app/ui_kit/imagekit/product_list_image.dart';
import 'package:marketlab_app/ui_kit/titles/product_price.dart';
import 'package:marketlab_app/ui_kit/titles/product_supermarket_icon.dart';
import 'package:marketlab_app/ui_kit/titles/product_title.dart';

class ProductCard extends StatelessWidget {
  final Product model;
  ProductCard({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration().defaultCardDecoration,
      child: ListTile(
        leading: ProductListImage(),
        title: Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ProductTitle(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ProductPrice(),
                  SizedBox(width: 5),
                  ProductSupermarketIcon(),
                ],
              ),
            ],
          ),
        ),
        trailing: IconButton(icon: Icon(Icons.add_circle), onPressed: () {}),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProductMarket()));
        },
      ),
    );
  }
}
