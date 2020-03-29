import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketlab_app/blocs/market/bloc/market_bloc.dart';
import 'package:marketlab_app/data/static_data.dart';
import 'package:marketlab_app/models/product.dart';
import 'package:marketlab_app/widgets/mayapp_navigation.bar.dart';
import 'package:marketlab_app/widgets/product_search_view.dart';

class AppSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MarketBloc>(
      child: Scaffold(
        body: SafeArea(
          child: SearchBar<Product>(
            icon: null,
            searchBarStyle: SearchBarStyle(
              padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
            ),
            searchBarPadding: EdgeInsets.symmetric(horizontal: 15),
            hintText: "Bir ürün adı girin...",
            hintStyle: TextStyle(fontSize: 14),
            onSearch: new StaticData().search,
            searchBarController: null,
            placeHolder: Center(child: Text("placeholder")),
            cancellationWidget: Icon(Icons.clear),
            emptyWidget: Text("empty"),
            onCancelled: () {
              print("Cancelled triggered");
            },
            buildSuggestion: (Product product, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ProductSearchView(),
              );
            },
            suggestions: [
              Product(id: 1, name: "fdsfsdfs", price: 2.9),
              Product(id: 1, name: "fdsfsdfs", price: 2.9)
            ],
            mainAxisSpacing: 10,
            crossAxisCount: 1,
            onItemFound: (Product product, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ProductSearchView(),
              );
            },
          ),
        ),
        bottomNavigationBar: MyAppNavigationBar(),
      ),
      create: (BuildContext context) => MarketBloc(),
    );
  }
}
