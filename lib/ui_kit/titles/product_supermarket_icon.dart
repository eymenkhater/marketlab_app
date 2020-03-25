import 'package:flutter/material.dart';

class ProductSupermarketIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Image.network(
          "https://logos-download.com/wp-content/uploads/2016/09/Migros_logo.png",
          height: 7,
        ),
      ),
    );
  }
}
