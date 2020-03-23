import 'package:flutter/material.dart';

class ProductListImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/27590019/kumkuat-150-gr-c94866.jpg",
        ),
      ),
    );
  }
}
