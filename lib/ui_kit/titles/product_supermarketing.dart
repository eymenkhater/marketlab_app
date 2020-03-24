import 'package:flutter/material.dart';

class ProductSuperMarketing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Image.network(
          "https://pngimage.net/wp-content/uploads/2018/06/logo-migros-png-1.png",
          height: 30,
        ),
      ),
    );
  }
}
