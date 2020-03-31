import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marketlab_app/service_provider.dart';
import 'package:marketlab_app/src/blocs/products/featured_products/dto/featured_product_response.dart';
import 'package:marketlab_app/src/data/repositories/product_repository.dart';

part 'featured_products_event.dart';
part 'featured_products_state.dart';

class FeaturedProductsBloc extends Bloc<FeaturedProductsEvent, FeaturedProductsState> {
  final _productRepository = serviceProvider<ProductRepository>();

  @override
  FeaturedProductsState get initialState => FeaturedProductsInitial();

  @override
  Stream<FeaturedProductsState> mapEventToState(
    FeaturedProductsEvent event,
  ) async* {
    if (event is FetchFeaturedProductsEvent) {
      yield FeaturedProductsLoaded(featuredProducts: await _productRepository.getFeaturedProducts());
    }
  }
}
