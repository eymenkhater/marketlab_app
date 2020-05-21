import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:marketlab_app/service_provider.dart';
import 'package:marketlab_app/src/blocs/products/search_products/dto/search_product_response.dart';
import 'package:marketlab_app/src/data/repositories/product_repository.dart';
import 'package:marketlab_app/ui/shared/main/mayapp_navigation.bar.dart';
import 'package:marketlab_app/ui/shared/partials/products/product_search_partial.dart';
import 'package:marketlab_app/ui/widgets/topics/default_topic.dart';

class SearchScreen extends StatelessWidget {
  final _productRepository = serviceProvider<ProductRepository>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchBar<SearchProductResponse>(
          icon: null,
          searchBarStyle: SearchBarStyle(
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
          searchBarPadding: EdgeInsets.symmetric(horizontal: 15),
          hintText: "Bir ürün adı girin...",
          hintStyle: TextStyle(fontSize: 14),
          onSearch: _productRepository.getSearchedProducts,
          searchBarController: null,
          // placeHolder: Center(child: Text("placeholder")),
          cancellationWidget: Icon(Icons.clear),
          emptyWidget: Center(child: Text("Ürün bulunamadı")),
          onCancelled: () {
            print("Cancelled triggered");
          },
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          onItemFound: (SearchProductResponse product, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ProductSearchPartial(model: product),
            );
          },
        ),
      ),
      bottomNavigationBar: MyAppNavigationBar(),
    );
  }
}
