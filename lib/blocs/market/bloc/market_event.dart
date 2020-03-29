part of 'market_bloc.dart';

abstract class MarketEvent extends Equatable {
  const MarketEvent();
}

class FetchMarketEventByProductId extends MarketEvent {
  final int productId;
  @override
  List<Object> get props => const [];

  FetchMarketEventByProductId({@required this.productId});
}
