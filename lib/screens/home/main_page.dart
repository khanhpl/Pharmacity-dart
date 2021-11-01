import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../services/product_lists/product_list.dart';
import '../services/orders.dart';
import '../services/accounts/accounts.dart';
import '../services/shopping_cart.dart';


class MyMainPage extends StatefulWidget {
  // MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyMainPageState extends State<MyMainPage> {
  static int _selectedIndex = 0;

  final List<Widget> _children = [
    MyHomeScreen(),
    ProductList(),
    Order(),
    Account()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      floatingActionButton: CircleAvatar(
        radius: 30.0,
        child: IconButton(
          iconSize: 30.0,
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {
            // Navigator.pushNamed(context, '/shoppingCart');
            Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartPage()));
          },
        ),
      ),

    );
  }
}
