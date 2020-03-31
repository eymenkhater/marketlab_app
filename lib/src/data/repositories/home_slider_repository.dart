import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:marketlab_app/src/constants/api_url.dart';
import 'package:marketlab_app/src/domain/homeslider.dart';

class HomeSliderRepository {
  Future<List<HomeSlider>> getList() async {
    final http.Client httpClient = http.Client();
    final response = await httpClient.get(API_URL.SLIDERS);

    final List<HomeSlider> homeSliders = [];
    var sliders = jsonDecode(response.body)["data"];

    for (Map slider in sliders) {
      homeSliders.add(HomeSlider.fromJson(slider));
    }

    return homeSliders;
  }
}
