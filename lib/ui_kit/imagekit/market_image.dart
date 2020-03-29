import 'package:flutter/material.dart';

class MarketImage extends StatelessWidget {
  String _imageUrl;
  MarketImage(this._imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          _imageUrl,
          height: 20,
        ),
      ),
    );
  }
}
