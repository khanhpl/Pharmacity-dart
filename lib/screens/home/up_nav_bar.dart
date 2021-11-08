import 'package:flutter/material.dart';
import '../services/notification.dart';
AppBar UpAppBar(context) {
  return AppBar(
    backgroundColor: Colors.blue[700],
    title: Container(
      height: 40,
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      padding: EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            color: Colors.grey[400],
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Tìm Trên Pharmacity',
                  hintStyle: TextStyle(
                    color: Colors.black26,
                  ),
              ),
            ),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.notifications_active_outlined),
        onPressed: () {
          Navigator.pushNamed(context, '/notification');
        },
      ),
      IconButton(
        icon: Icon(Icons.shopping_cart_outlined),
        onPressed: () {
          Navigator.pushNamed(context, '/shoppingCart');
        },
      ),
    ],
  );
}
