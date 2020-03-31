import 'package:flutter/material.dart';
import 'package:marketlab_app/ui/shared/constants/app_colors.dart';

class SliderCardWidget extends StatelessWidget {
  final String imagePath;
  SliderCardWidget({Key key, this.imagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imagePath),
            fit: BoxFit.cover,
          ),
          color: AppColors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
