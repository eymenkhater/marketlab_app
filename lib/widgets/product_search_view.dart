import 'package:flutter/material.dart';
import 'package:marketlab_app/models/product.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxshadow.dart';

class ProductSearchView extends StatelessWidget {
  final Product model;
  ProductSearchView({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
        boxShadow: [AppBoxShadow().defaulBoxShadow()],
      ),
      child: ListTile(
        // contentPadding: EdgeInsets.all(5),
        leading: Image.network(
          "https://reimg-carrefour.mncdn.com/mnresize/600/600/productimage/30239883/30239883_0_MC/8812216811570_1556175751113.jpg",
        ),
        title: Container(child: Text(model.name)),
        isThreeLine: true,
        subtitle: Text(model.price.toString()),
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detail()));
        },
      ),
    );
  }
}
