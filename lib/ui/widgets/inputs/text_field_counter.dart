import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketlab_app/ui/shared/constants/app_font_weight.dart';

class TextFieldCounter extends StatefulWidget {
  @override
  _TextFieldCounterState createState() => _TextFieldCounterState();
}

class _TextFieldCounterState extends State<TextFieldCounter> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    int quantity = 0;
    _controller.text = quantity.toString();
    return Container(
        width: 100,
        child: Row(
          children: <Widget>[
            InkWell(child: Icon(Icons.remove), onTap: () => quantity = quantity-- <= 0 ? 0 : quantity--),
            Container(
              width: 50,
              child: TextField(
                onChanged: (value) {
                  quantity = int.parse(value);
                },
                controller: _controller,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                showCursor: true,
                style: TextStyle(
                  fontWeight: AppFontWeight.medium,
                  fontSize: 22,
                ),
                inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  // contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            InkWell(
                child: Icon(Icons.add),
                onTap: () {
                  quantity++;
                  print("$quantity");
                }),
          ],
        ));
  }
}
