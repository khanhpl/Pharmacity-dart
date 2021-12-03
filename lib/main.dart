import 'package:flutter/material.dart';
import 'package:pharmacity_dart/screens/services/accounts/accounts.dart';
import 'screens/services/notification.dart';
import 'screens/services/shopping_cart.dart';
import 'screens/services/phouse_system/phouse_system.dart';
import 'screens/home/main_page.dart';
import 'screens/services/accounts/login_form.dart';
import 'screens/services/accounts/accounts.dart';
import 'screens/services/accounts/user_ranking.dart';
import 'screens/services/accounts/help_center.dart';
import 'screens/services/accounts/accountSetting.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() {
    // TODO: implement createState
    return _RunMyApp();
  }
}

class _RunMyApp extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      theme: ThemeData(
        primaryColor: Color.fromRGBO(14, 98, 249, 1),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => MyMainPage(),
        '/notification': (context) => NotificationPage(),
        '/shoppingCart': (context) => ShoppingCartPage(),
        '/phouseSystem': (context) => MyPHouseSystemPage(),
        '/loginForm': (context) => MyLoginForm(),
        '/accounts': (context) => Account(),
        '/userRanking': (context) => MyUserRanking(),
        '/helpCenter': (context) => MyHelpCenter(),
        '/accountSetting': (context) => MyAccountSetting(),
      },
    );
  }
}
