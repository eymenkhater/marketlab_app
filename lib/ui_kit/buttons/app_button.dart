import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 25,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        color: Colors.orange,
        child: Text(
          "Listeye Ekle",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        onPressed: () => print("Clicked"),
      ),
    );
  }
}
