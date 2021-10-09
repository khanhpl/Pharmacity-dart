import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  // MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 40.0,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(
          label: 'Trang chủ',
          icon: Icon(
            Icons.home,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Doanh mục sản phẩm',
          icon: Icon(
            Icons.medication_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Đơn hàng',
          icon: Icon(
            Icons.receipt_long_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Cá nhân',
          icon: Icon(
            Icons.account_circle_outlined,
          ),
        ),
      ],
    );
  }
}
