import 'package:flutter/material.dart';
import 'package:marketlab_app/extensions/hexcolor_extension.dart';

class AppBoxShadow {
  BoxShadow defaulBoxShadow() {
    return BoxShadow(
      color: HexColor.fromHex("#bdbdbd"),
      offset: new Offset(1.0, 1.0),
      blurRadius: 5.0,
    );
  }
}
