import 'package:flutter/material.dart';
import 'package:marketlab_app/service_provider.dart';
import 'app.dart';

void main({String env}) async {
  setupLocator();
  runApp(App());
}
