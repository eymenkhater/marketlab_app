import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxdecoration.dart';
import 'package:marketlab_app/ui_kit/forms/text_field_counter.dart';

class BasketInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.remove_circle_outline),
          //   onPressed: () {},
          // ),

          // IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {}),
        ],
      ),
    );
  }
}
