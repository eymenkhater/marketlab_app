import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:marketlab_app/data/static_data.dart';
import 'package:marketlab_app/models/market.dart';

part 'market_event.dart';
part 'market_state.dart';

class MarketBloc extends Bloc<MarketEvent, MarketState> {
  @override
  MarketState get initialState => MarketInitial();

  @override
  Stream<MarketState> mapEventToState(
    MarketEvent event,
  ) async* {
    if (event is FetchMarketEventByProductId) {
      List<Market> _markets = await StaticData.fetchMarketsByProductId();
      yield MarketLoadedState(markets: _markets);
    } else if (event is MarketInitial) {
      print("MarketInitial");
    }
  }
}
