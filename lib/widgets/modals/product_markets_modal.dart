import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketlab_app/blocs/market/bloc/market_bloc.dart';
import 'package:marketlab_app/ui_kit/cards/market_card.dart';
import 'package:marketlab_app/ui_kit/constants/app_boxdecoration.dart';

class ProductMarketsModal extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: AppBoxDecoration()
          .defaultModalDecoration(Theme.of(context).canvasColor),
      child: BlocBuilder<MarketBloc, MarketState>(
        bloc: context.bloc<MarketBloc>(),
        builder: (context, MarketState state) {
          if (state is MarketLoadedState) {
            return Container(
              padding: EdgeInsets.only(top: 30),
              child: ListView.builder(
                primary: false,
                itemCount: state.markets.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: MarketCard(
                      imageUrl: state.markets[index].imageUrl,
                      marketPrice: state.markets[index].price,
                    ),
                  );
                },
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
