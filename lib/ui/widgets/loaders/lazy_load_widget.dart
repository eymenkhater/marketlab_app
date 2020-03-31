import 'package:flutter/material.dart';

class LazyLoadWidget extends StatelessWidget {
  const LazyLoadWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/animations/laz_load.gif", height: 50),
    );
  }
}
