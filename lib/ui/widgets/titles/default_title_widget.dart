import 'package:flutter/material.dart';
import 'package:marketlab_app/ui/shared/constants/app_font_weight.dart';

class DefaultTitleWidget extends StatelessWidget {
  String _title;
  DefaultTitleWidget(this._title);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(_title, style: TextStyle(fontWeight: AppFontWeight.medium, fontSize: 16)),
    );
  }
}
