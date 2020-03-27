import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketlab_app/ui_kit/fonts/app_font_weight.dart';

class TextFieldCounter extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    _controller.text = "0";
    return Container(
        width: 100,
        child: Row(
          children: <Widget>[
            InkWell(child: Icon(Icons.remove), onTap: () => print("fdsfdsf")),
            Container(
              width: 50,
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                showCursor: true,
                style: TextStyle(
                  fontWeight: AppFontWeight.medium,
                  fontSize: 22,
                ),
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  // contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            InkWell(child: Icon(Icons.add), onTap: () => print("fdsfdsf")),
          ],
        ));
  }
}
