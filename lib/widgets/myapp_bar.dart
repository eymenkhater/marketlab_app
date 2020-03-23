import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/forms/app_text_form_fields.dart';

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
            child: DefaultTextFormField(
              placeHolder: "Bir ürün adı girin..",
              keyboardType: TextInputType.text,
            ),
          ),
        ],
      ),
    );
  }
}
