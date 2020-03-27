import 'package:flutter/material.dart';

class MarketImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          "https://logos-download.com/wp-content/uploads/2016/09/Migros_logo.png",
          height: 20,
        ),
      ),
    );
  }
}
