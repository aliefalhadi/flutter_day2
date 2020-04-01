import 'package:flutter/material.dart';
import 'package:flutterday2/ui_page/CustomGridView.dart';
import 'package:flutterday2/ui_page/SimpleGridView.dart';
import 'package:flutterday2/ui_page/SimpleListView.dart';

import 'PageHome.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  final _listPage = [
    PageHome(),
    SimpleListView(),
    SimpleGridView(),
    CustomGridView(),
  ];

  final _bottomNavItem = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title : Text('Home')
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_box),
      title : Text('Page2')
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.email),
      title : Text('Page3')
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.local_hospital),
      title : Text('Page4')
    ),
  ];

  void onTapBottomNav(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        items: _bottomNavItem,
        onTap: onTapBottomNav,
      ),
    );
  }
}
