part of 'search_products_bloc.dart';

abstract class SearchProductsState extends Equatable {
  const SearchProductsState();
}

class SearchProductsInitial extends SearchProductsState {
  @override
  List<Object> get props => [];
}
