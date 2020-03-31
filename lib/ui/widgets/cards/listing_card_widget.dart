import 'package:flutter/material.dart';
import 'package:marketlab_app/ui/shared/constants/app_boxdecoration.dart';
import 'package:marketlab_app/ui/widgets/images/resource_icon_widget.dart';
import 'package:marketlab_app/ui/widgets/inputs/text_field_counter.dart';
import 'package:marketlab_app/ui/widgets/textures/listing_price_widget.dart';

class ListingCardWidget extends StatelessWidget {
  final String imageUrl;
  final double price;
  ListingCardWidget({this.imageUrl, this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration().defaultCardDecoration,
      child: ListTile(
        leading: ResourceIconWidget(imageUrl),
        title: Container(
          child: ListingPriceWidget(price),
        ),
        trailing: TextFieldCounter(),
      ),
      // IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {}),
    );
  }
}
