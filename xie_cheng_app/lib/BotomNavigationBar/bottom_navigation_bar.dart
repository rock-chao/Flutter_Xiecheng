import 'package:flutter/material.dart';

import 'home_page.dart';
import 'mine_page.dart';
import 'search_page.dart';
import 'travel_page.dart';


class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() {
    return _BottomNavigationWidgetState();
  }
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  final _activeColor = Colors.purple;
  final _iconColor = Colors.white30;

  List<Widget>items = [HomePage(),SearchPage(),TravelPage(),MinePage()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: items[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon:Icon(
              Icons.home,
              color: _iconColor,
            ),
            title: Text(
              '首页',
              style: TextStyle(color: _currentIndex == 0?_activeColor:_iconColor),
            ),
            activeIcon: Icon(
              Icons.home,
              color: _activeColor,
            )
          ),
          BottomNavigationBarItem(
              icon:Icon(
                Icons.search,
                color: _iconColor,
              ),
              title: Text(
                  '搜索',
                  style: TextStyle(color: _currentIndex == 1?_activeColor:_iconColor),
              ),
              activeIcon: Icon(
                Icons.search,
                color: _activeColor,
              ),
          ),
          BottomNavigationBarItem(
              icon:Icon(
                Icons.camera,
                color: _iconColor,
              ),
              title: Text(
                  '旅拍',
                  style: TextStyle(color: _currentIndex == 2?_activeColor:_iconColor),
              ),
              activeIcon: Icon(
                Icons.camera,
                color: _activeColor,
              ),
          ),
          BottomNavigationBarItem(
              icon:Icon(
                Icons.account_circle,
                color: _iconColor,
              ),
              title: Text(
                  '我的',
                  style: TextStyle(color: _currentIndex == 3?_activeColor:_iconColor),
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: _activeColor,
              ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}