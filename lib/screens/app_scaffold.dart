import 'package:flutter/material.dart';
import 'package:marketlab_app/widgets/area_title.dart';
import 'package:marketlab_app/widgets/category_gridview.dart';
import 'package:marketlab_app/widgets/mayapp_navigation.bar.dart';

import 'package:marketlab_app/widgets/myapp_bar.dart';
import 'package:marketlab_app/widgets/productlist_gridview.dart';
import 'package:marketlab_app/widgets/slider_gridview.dart';

class AppScaffold extends StatelessWidget {
  @override
  int _selectedIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: MyAppBar(),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 15),
            SliderGridView(),
            SizedBox(height: 15),
            AreaTitle(title: "Kategoriler"),
            SizedBox(height: 10),
            CategoryGridView(),
            SizedBox(height: 20),
            AreaTitle(title: "Fırsat Ürünleri"),
            SizedBox(height: 10),
            ProductListGridView()
          ],
        ),
      ),
      bottomNavigationBar: MyAppNavigationBar(),
    );
  }
}
