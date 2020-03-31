import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketlab_app/src/blocs/home_sliders/bloc/home_slider_bloc.dart';
import 'package:marketlab_app/src/blocs/products/featured_products/bloc/featured_products_bloc.dart';
import 'package:marketlab_app/ui/shared/main/mayapp_navigation.bar.dart';
import 'package:marketlab_app/ui/shared/main/my_scaffold.dart';
import 'package:marketlab_app/ui/shared/main/myapp_bar.dart';
import 'package:marketlab_app/ui/shared/partials/categories/main_category_partial.dart';
import 'package:marketlab_app/ui/shared/partials/home_sliders/home_slider_partial.dart';
import 'package:marketlab_app/ui/shared/partials/products/featured_products_partial.dart';
import 'package:marketlab_app/ui/widgets/topics/default_topic.dart';

class HomeScreen extends StatelessWidget {
  int bottomNavIndex = 0;
  final _homeSliderBloc = HomeSliderBloc();
  final _featuredProducts = FeaturedProductsBloc();

  @override
  Widget build(BuildContext context) {
    _homeSliderBloc.add(FetchHomeSliderEvent());
    _featuredProducts.add(FetchFeaturedProductsEvent());

    return MyScaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => _refresh(),
          child: Container(
            child: ListView(
              children: <Widget>[
                SizedBox(height: 15),
                BlocProvider(
                  create: (context) => _homeSliderBloc,
                  child: HomeSliderPartial(),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DefaultTopic("Kategoriler"),
                ),
                SizedBox(height: 10),
                MainCategoryPartial(),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DefaultTopic("Günün Ürünleri"),
                ),
                SizedBox(height: 10),
                BlocProvider(
                  create: (context) => _featuredProducts,
                  child: FeaturedProductsPartial(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: MyAppNavigationBar(),
    );
  }

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 1));
    _homeSliderBloc.add(FetchHomeSliderEvent());
    _featuredProducts.add(FetchFeaturedProductsEvent());
  }
}
