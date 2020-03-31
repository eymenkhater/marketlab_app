import 'package:flutter/material.dart';
import 'package:marketlab_app/src/constants/api_url.dart';

class ResourceImageWidget extends StatelessWidget {
  String _imagePath;
  ResourceImageWidget(this._imagePath);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Image.network(
          "${API_URL.BASE_IMAGE_URL + _imagePath}",
          height: 8,
        ),
      ),
    );
  }
}
