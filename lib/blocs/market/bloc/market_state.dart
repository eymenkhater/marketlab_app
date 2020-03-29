part of 'market_bloc.dart';

abstract class MarketState extends Equatable {
  const MarketState();
}

class MarketInitial extends MarketState {
  List<Market> get props => [];
}

class MarketLoadedState extends MarketState {
  @override
  List<Market> get props => markets;
  List<Market> markets;
  MarketLoadedState({this.markets});
}
