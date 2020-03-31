import 'package:flutter/material.dart';
import 'package:marketlab_app/ui/shared/constants/app_font_weight.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: 30,
              left: 15,
              right: 15,
            ),
            child: Text(
              "MarketLab App",
              style: TextStyle(
                fontSize: 18,
                fontWeight: AppFontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
