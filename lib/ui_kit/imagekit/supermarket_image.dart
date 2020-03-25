import 'package:flutter/material.dart';

class SuperMarketImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          "https://pngimage.net/wp-content/uploads/2018/06/logo-migros-png-1.png",
        ),
      ),
    );
  }
}
