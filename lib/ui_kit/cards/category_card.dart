import 'package:flutter/material.dart';
import 'package:marketlab_app/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category model;
  CategoryCard({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(height: 10),
          Text(
            model.name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
