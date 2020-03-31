part of 'home_slider_bloc.dart';

abstract class HomeSliderState extends Equatable {
  const HomeSliderState();
}

class HomeSliderInitial extends HomeSliderState {
  @override
  List<Object> get props => [];
}

class HomeSliderLoaded extends HomeSliderState {
  HomeSliderLoaded({@required this.homeSliders});

  List<HomeSlider> homeSliders;

  @override
  // TODO: implement props
  List<Object> get props => null;
}
