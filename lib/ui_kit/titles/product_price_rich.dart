import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/fonts/app_font_weight.dart';

class ProductPriceRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        maxLines: 1,
        text: TextSpan(
          text: '28,90 TL',
          style: TextStyle(
            fontSize: 12,
            fontWeight: AppFontWeight.bold,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
          // style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
              text: " 'den başlayan fiyat",
              style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  fontWeight: AppFontWeight.medium,
                  color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
