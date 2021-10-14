import 'package:flutter/material.dart';
import '../home/up_nav_bar.dart';
import '../home/main_page.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        centerTitle: true,
        title: Text(
          'Thông báo',
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
                Icons.notifications_active_outlined,
                color: Colors.grey,
                size: 250,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text('Bạn chưa có thông báo mới nào.'),
                  Text('Hãy quay trở lại sau!'),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: pageWidth * 0.9,
              child: ElevatedButton(
                child: Text(
                  'Trở lại trang chủ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
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
