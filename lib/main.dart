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

void main() {
  runApp(MaterialApp(
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
  ));
}
