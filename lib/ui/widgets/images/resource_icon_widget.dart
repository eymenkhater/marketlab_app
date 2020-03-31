import 'package:flutter/material.dart';
import 'package:marketlab_app/src/constants/api_url.dart';

class ResourceIconWidget extends StatelessWidget {
  String _imageUrl;
  ResourceIconWidget(this._imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Image.network(
          API_URL.BASE_IMAGE_URL + _imageUrl,
          height: 8,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
