import 'package:flutter/material.dart';
import 'package:marketlab_app/ui/shared/constants/app_colors.dart';

class DefaultTextFormField extends StatelessWidget {
  String placeHolder;
  TextInputType keyboardType;
  bool secureText;
  DefaultTextFormField({this.placeHolder, this.keyboardType, this.secureText = false});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8),
      shadowColor: AppColors.greyAppText,
      child: TextFormField(
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
        ),
        keyboardType: keyboardType,
        obscureText: secureText,
        decoration: InputDecoration(
          fillColor: AppColors.greyLight,
          filled: true,
          contentPadding: new EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 10.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintText: placeHolder,
          hintStyle: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color: AppColors.greyAppText,
          ),
        ),
      ),
    );
  }
}
