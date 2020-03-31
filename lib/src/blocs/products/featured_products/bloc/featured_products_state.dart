part of 'featured_products_bloc.dart';

abstract class FeaturedProductsState extends Equatable {
  const FeaturedProductsState();
}

class FeaturedProductsInitial extends FeaturedProductsState {
  @override
  List<Object> get props => [];
}

class FeaturedProductsLoaded extends FeaturedProductsState {
  List<FeaturedProductListingResponse> featuredProducts = [];

  FeaturedProductsLoaded({this.featuredProducts});

  @override
  List<Object> get props => [];
}
