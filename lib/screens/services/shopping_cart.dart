import 'package:flutter/material.dart';
import '../home/up_nav_bar.dart';
import '../home/main_page.dart';

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
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
                Icons.shopping_cart_outlined,
                color: Colors.grey,
                size: 250,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text('Bạn chưa có sản phẩm nào trong giỏ hàng.'),
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
