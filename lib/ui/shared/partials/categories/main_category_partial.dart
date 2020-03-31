import 'package:flutter/material.dart';
import 'package:marketlab_app/src/data/static_data.dart';
import 'package:marketlab_app/ui/widgets/cards/category_card_widget.dart';

class MainCategoryPartial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 15,
          crossAxisCount: 1,
          childAspectRatio: 1.3,
        ),
        padding: EdgeInsets.only(left: 15.0),
        scrollDirection: Axis.horizontal,
        primary: true,
        children: StaticData.categoryList.map((category) => CategoryCard(name: category.name)).toList(),
      ),
    );
  }
}
