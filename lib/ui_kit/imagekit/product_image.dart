import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/27590005/27590005-e6a652.jpg",
        ),
      ),
    );
  }
}
