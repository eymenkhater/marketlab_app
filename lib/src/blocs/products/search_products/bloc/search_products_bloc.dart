import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_products_event.dart';
part 'search_products_state.dart';

class SearchProductsBloc extends Bloc<SearchProductsEvent, SearchProductsState> {
  @override
  SearchProductsState get initialState => SearchProductsInitial();

  @override
  Stream<SearchProductsState> mapEventToState(
    SearchProductsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
