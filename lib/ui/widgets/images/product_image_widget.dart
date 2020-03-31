import 'package:flutter/material.dart';

class ProductImageWidget extends StatelessWidget {
  String _imageUrl;
  ProductImageWidget(this._imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(_imageUrl),
      ),
    );
  }
}
