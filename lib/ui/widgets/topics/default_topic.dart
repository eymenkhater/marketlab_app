import 'package:flutter/material.dart';

class DefaultTopic extends StatelessWidget {
  String _title;
  DefaultTopic(this._title);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Text(
        _title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }
}
