import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketlab_app/screens/app_search.dart';
import 'package:marketlab_app/screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: Home(),
    );
  }
}
