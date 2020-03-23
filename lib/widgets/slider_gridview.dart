import 'package:flutter/material.dart';
import 'package:marketlab_app/data/static_data.dart';
import 'package:marketlab_app/ui_kit/cards/slider_card.dart';

class SliderGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: StaticData.homeSliderList
            .map((slider) => SliderCard(model: slider))
            .toList(),
      ),
    );
  }
}
