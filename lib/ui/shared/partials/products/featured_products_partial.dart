import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketlab_app/src/blocs/products/featured_products/bloc/featured_products_bloc.dart';
import 'package:marketlab_app/ui/widgets/cards/product_card_widget.dart';
import 'package:marketlab_app/ui/widgets/loaders/lazy_load_widget.dart';

class FeaturedProductsPartial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: BlocBuilder<FeaturedProductsBloc, FeaturedProductsState>(builder: (context, state) {
        if (state is FeaturedProductsLoaded) {
          return Column(
            children: state.featuredProducts
                .map(
                  (q) => Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ProductCardWidget(
                      id: q.id,
                      name: q.name,
                      imagePath: q.productImage.imagePath,
                      listingPrice: q.listing.price,
                      resourceImagePath: q.resource.imageUrl,
                    ),
                  ),
                )
                .toList(),
          );
        }
        return Container(height: 100, child: LazyLoadWidget());
      }),
    );
  }
}
