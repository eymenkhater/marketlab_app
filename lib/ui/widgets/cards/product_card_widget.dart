import 'package:flutter/material.dart';
import 'package:marketlab_app/ui/shared/constants/app_boxdecoration.dart';
import 'package:marketlab_app/ui/widgets/images/product_image_widget.dart';
import 'package:marketlab_app/ui/widgets/images/resource_image_widget.dart';
import 'package:marketlab_app/ui/widgets/textures/default_price_widget.dart';
import 'package:marketlab_app/ui/widgets/titles/default_title_widget.dart';

class ProductCardWidget extends StatelessWidget {
  final int id;
  final String name;
  final String imagePath;
  final double listingPrice;
  final String resourceImagePath;

  ProductCardWidget({Key key, this.id, this.name, this.imagePath, this.listingPrice, this.resourceImagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: AppBoxDecoration().defaultCardDecoration,
      child: ListTile(
        leading: ProductImageWidget(imagePath),
        title: Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DefaultTitleWidget(name),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  DefaultPriceWidget(listingPrice),
                  SizedBox(width: 5),
                  ResourceImageWidget(resourceImagePath),
                ],
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
