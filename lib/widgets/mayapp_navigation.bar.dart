import 'package:flutter/material.dart';
import 'package:marketlab_app/extensions/hexcolor_extension.dart';
import 'package:marketlab_app/screens/app_search.dart';
import 'package:marketlab_app/screens/home.dart';
import 'package:marketlab_app/ui_kit/constants/app_colors.dart';

class MyAppNavigationBar extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyAppNavigationBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex = index;
          print(index);
        }),
        backgroundColor: AppColors.greyAppBg,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Home())),
            ),
            title: SizedBox(height: 0),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => AppSearch())),
            ),
            title: SizedBox(height: 0),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.list),
              onPressed: () => null,
            ),
            title: SizedBox(height: 0),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () => null,
            ),
            title: SizedBox(height: 0),
          ),
        ],
      ),
    );
  }
}
