import 'package:flutter/material.dart';
import 'package:marketlab_app/models/product.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxdecoration.dart';
import 'package:marketlab_app/ui_kit/imagekit/product_image.dart';
import 'package:marketlab_app/ui_kit/titles/product_price_rich.dart';
import 'package:marketlab_app/ui_kit/titles/product_supermarket_icon.dart';
import 'package:marketlab_app/ui_kit/titles/product_title.dart';
import 'package:marketlab_app/widgets/modals/product_markets_modal.dart';

class ProductSearchView extends StatelessWidget {
  final Product model;
  ProductSearchView({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration().defaultCardDecoration,
      child: ListTile(
        leading: ProductImage(),
        title: Container(
          // height: 80,
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ProductTitle(),
              SizedBox(height: 2),
              ProductPriceRich(),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: ProductSupermarketIcon(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: ProductSupermarketIcon(),
                  ),
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return ProductMarketsModal();
              });
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => ProductMarket()));
        },
      ),
    );
  }
}
