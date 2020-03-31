part of 'search_products_bloc.dart';

abstract class SearchProductsEvent extends Equatable {
  const SearchProductsEvent();
}

class FetchSearchedProductsEvent extends SearchProductsEvent {
  @override
  // TODO: implement props
  List<Object> get props => null;
}
