import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/constants/app_colors.dart';

class AppButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: AppColors.blueAppButton,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () => print("Clicked"),
    );
  }
}
