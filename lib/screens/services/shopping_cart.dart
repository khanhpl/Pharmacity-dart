import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import '../home/up_nav_bar.dart';
import '../home/main_page.dart';

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'Giỏ hàng của bạn',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: pageHeight * 0.15),
            Container(
              child: Icon(
                FontAwesome.basket,
                color: Colors.black26,
                size: 200,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text('Bạn chưa có sản phẩm nào trong giỏ hàng.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 18,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: pageWidth * 0.9,
              child: ElevatedButton(
                child: Text(
                  'Mua sắm ngay',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    )
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
