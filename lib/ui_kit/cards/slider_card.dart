import 'package:flutter/material.dart';
import 'package:marketlab_app/models/homeslider.dart';
import 'package:marketlab_app/ui_kit/constants/app_colors.dart';

class SliderCard extends StatelessWidget {
  final HomeSlider model;
  SliderCard({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(height: 10),
            Text(
              model.title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: AppColors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
