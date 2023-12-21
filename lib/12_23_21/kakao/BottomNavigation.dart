import 'package:flutter/material.dart';

import 'home/home_contents.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectPageIndex = 0;

  static const List<Widget> _widgetPages = <Widget>[
    HomeContentsScreen(),
    Text(
      '이용서비스',
    ),
    Text(
      '내정보',
    ),
  ];

  void _onNaviTapped(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kakao T'),
        shape: const Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 3,
          ),
        ),
      ),
      body: Center(
        child: _widgetPages.elementAt(_selectPageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: '이용서비스',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: '내정보',
          ),
        ],
        currentIndex: _selectPageIndex,
        selectedItemColor: Colors.blue,
        onTap: _onNaviTapped,
      ),
    );
  }
}
