import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'screens/home/home_screen.dart';
import 'screens/services/notification.dart';
import 'screens/services/shopping_cart.dart';
import 'screens/services/phouse_system/phouse_system.dart';
import 'screens/home/main_page.dart';

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Pharmacity Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: MyBottomBar(),
//         routes: <String, WidgetBuilder>{
//           '/notification': (BuildContext context) => NotificationPage(),
//           '/shoppingCart': (BuildContext context) => ShoppingCartPage(),
//           '/phouseSystem': (BuildContext context) => MyPHouseSystemPage(),
//         });
//   }
// }

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => MyMainPage(),
      '/notification': (context) => NotificationPage(),
      '/shoppingCart': (context) => ShoppingCartPage(),
      '/phouseSystem': (context) => MyPHouseSystemPage(),
    },
  ));
}
