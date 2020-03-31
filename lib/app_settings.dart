import 'dart:convert';

import 'package:flutter/services.dart';

class AppSettings {
  final String apiUrl;

  AppSettings({this.apiUrl});

  static Future<AppSettings> forEnvironment(String env) async {
    // set default to dev if nothing was passed
    env = env ?? 'dev';

    // load the json file
    final contents = await rootBundle.loadString(
      'assets/config/$env.json',
    );

    // decode our json
    final json = jsonDecode(contents);

    // convert our JSON into an instance of our AppConfig class
    return AppSettings(apiUrl: json['apiUrl']);
  }
}
