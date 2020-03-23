import 'package:flutter/material.dart';

class ProductSuperMarketing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ClipRRect(
        child: Image.network(
          "https://pngimage.net/wp-content/uploads/2018/06/logo-migros-png-1.png",
          width: 60,
          height: 30,
        ),
      ),
    );
  }
}
