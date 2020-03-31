import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketlab_app/ui/shared/constants/app_boxdecoration.dart';
import 'package:marketlab_app/ui/widgets/cards/listing_card_widget.dart';

// class ProductListingsPartial extends StatelessWidget {
//   ProductListingsPartial({this.productId});
//   int productId;
//   final _selectedProductListingBloc = SelectedProductListingBloc();
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     _selectedProductListingBloc.add(FetchSelectedProductListingsEvent(productId: productId));
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 15),
//       decoration: AppBoxDecoration().defaultModalDecoration(Theme.of(context).canvasColor),
//       child: Container(
//         padding: EdgeInsets.only(top: 30),
//         child: BlocBuilder<SelectedProductListingBloc, SelectedProductListingState>(
//           bloc: _selectedProductListingBloc,
//           builder: (BuildContext context, state) {
//             if (state is SelectedProductListingLoaded) {
//               return ListView.builder(
//                 primary: false,
//                 itemCount: state.productListings.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 10.0),
//                     child: ListingCardWidget(
//                       imageUrl: state.productListings[index].resource.imageUrl,
//                       price: state.productListings[index].price,
//                     ),
//                   );
//                 },
//               );
//             } else
//               return Container();
//           },
//         ),
//       ),
//     );
//   }
// }
