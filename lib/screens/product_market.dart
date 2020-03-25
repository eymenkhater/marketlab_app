import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/cards/supermarket_card.dart';
import 'package:marketlab_app/ui_kit/imagekit/product_list_image.dart';
import 'package:marketlab_app/widgets/mayapp_navigation.bar.dart';
import 'package:marketlab_app/widgets/myapp_bar.dart';
import 'package:marketlab_app/widgets/product_market_info.dart';

class ProductMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: MyAppBar(),
      ),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          ProductMarketInfo(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SuperMarketCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SuperMarketCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SuperMarketCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SuperMarketCard(),
          ),
        ],
      )),
      bottomNavigationBar: MyAppNavigationBar(),
    );
  }
}
