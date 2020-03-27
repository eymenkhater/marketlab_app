import 'package:flutter/material.dart';
import 'package:marketlab_app/ui_kit/cards/market_card.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxdecoration.dart';

class ProductMarketsModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: AppBoxDecoration()
          .defaultModalDecoration(Theme.of(context).canvasColor),
      child: ListView(
        primary: false,
        children: <Widget>[
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: MarketCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: MarketCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: MarketCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: MarketCard(),
          ),
        ],
      ),
    );
  }
}
