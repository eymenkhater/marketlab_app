import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketlab_app/src/blocs/home_sliders/bloc/home_slider_bloc.dart';
import 'package:marketlab_app/ui/widgets/cards/slider_card_widget.dart';

class HomeSliderPartial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeSliderBloc, HomeSliderState>(builder: (BuildContext context, state) {
      if (state is HomeSliderLoaded) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: state.homeSliders.map((slider) => SliderCardWidget(imagePath: slider.imageUrl)).toList(),
          ),
        );
      } else {
        return Container();
      }
    });
  }
}
