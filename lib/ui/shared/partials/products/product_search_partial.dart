import 'package:flutter/material.dart';
import 'package:marketlab_app/src/blocs/products/search_products/dto/search_product_response.dart';
import 'package:marketlab_app/ui/shared/constants/app_boxdecoration.dart';
import 'package:marketlab_app/ui/widgets/images/product_image_widget.dart';
import 'package:marketlab_app/ui/widgets/images/resource_icon_widget.dart';
import 'package:marketlab_app/ui/widgets/textures/minimum_price_widget.dart';
import 'package:marketlab_app/ui/widgets/titles/default_title_widget.dart';

class ProductSearchPartial extends StatelessWidget {
  final SearchProductResponse model;
  ProductSearchPartial({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration().defaultCardDecoration,
      child: ListTile(
        leading: ProductImageWidget(model.productImages[0].imagePath),
        title: Container(
          // height: 80,
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DefaultTitleWidget(model.name),
              SizedBox(height: 2),
              MinimumPriceWidget(model.minPrice),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: model.resources
                    .map((resource) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: ResourceIconWidget(resource.imageUrl),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
        onTap: () => showModalBottomSheet(
          context: context,
          builder: (context) {
            return null;
            // return ProductListingsPartial(productId: model.id);
          },
        ),
        // onTap: () {
        //   _marketBloc.add(FetchMarketEventByProductId(productId: 1));
        //   showModalBottomSheet(
        //     backgroundColor: Colors.transparent,
        //     context: context,
        //     builder: (context) {
        //       //REFACTOR: https://flutterigniter.com/future-async-called-multiple-times/
        //       return BlocProvider.value(
        //         value: _marketBloc,
        //         child: ProductListingsModal(),
        //       );
        //     },
        //   );
        // },
      ),
    );
  }
}
