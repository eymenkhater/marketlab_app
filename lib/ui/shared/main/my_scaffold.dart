import 'package:flutter/material.dart';
import 'package:marketlab_app/ui/shared/constants/app_colors.dart';

class MyScaffold extends StatelessWidget {
  Widget appBar;
  Widget body;
  Widget bottomNavigationBar;
  MyScaffold({Key key, this.appBar, this.body, this.bottomNavigationBar}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyAppBg,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: appBar,
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
