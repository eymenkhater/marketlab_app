import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:marketlab_app/service_provider.dart';
import 'package:marketlab_app/src/data/repositories/home_slider_repository.dart';
import 'package:marketlab_app/src/domain/homeslider.dart';

part 'home_slider_event.dart';
part 'home_slider_state.dart';

class HomeSliderBloc extends Bloc<HomeSliderEvent, HomeSliderState> {
  final _homeSlidersRepository = serviceProvider<HomeSliderRepository>();

  @override
  HomeSliderState get initialState => HomeSliderInitial();

  @override
  Stream<HomeSliderState> mapEventToState(
    HomeSliderEvent event,
  ) async* {
    if (event is FetchHomeSliderEvent) {
      List<HomeSlider> _homeSliders = await _homeSlidersRepository.getList();
      yield HomeSliderLoaded(homeSliders: _homeSliders);
    }
  }
}
