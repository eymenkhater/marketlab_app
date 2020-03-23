import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // icon: IconButton(
            //   icon: Icon(Icons.home),
            //   onPressed: () => null,
            // ),
            icon: Icon(Icons.home),
            title: SizedBox(height: 0),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () => null,
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
