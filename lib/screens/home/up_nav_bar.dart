import 'package:flutter/material.dart';
import '../services/notification.dart';

AppBar UpAppBar(context) {
  var _pageWidth = MediaQuery.of(context).size.width;
  var _pageHeight = MediaQuery.of(context).size.height;

  var _edgeInsertLR = MediaQuery.of(context).size.width * 0.03;
  var _edgeInsertTB = MediaQuery.of(context).size.height * 0.03;

  return AppBar(
    backgroundColor: Theme.of(context).primaryColor,
    toolbarHeight: _pageHeight * 0.1,
    title: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          width: _pageWidth * 0.72,
          height: _pageHeight * 0.05,
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
                margin: EdgeInsets.only(left: 10),
              ),
              Expanded(
                child: Container(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Tìm trên Pharmacity',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: _pageWidth*0.08,
                child: IconButton(
                  icon: Icon(Icons.notifications_none_outlined),
                  onPressed: () {
                    Navigator.pushNamed(context, '/notification');
                  },
                ),
              ),
              Container(
                width: _pageWidth*0.08,
                child: IconButton(
                  icon: Icon(Icons.shopping_cart_outlined),
                  onPressed: () {
                    Navigator.pushNamed(context, '/shoppingCart');
                  },
                ),
              ),

            ],
          ),
        ),
      ],
    ),
  );
}
