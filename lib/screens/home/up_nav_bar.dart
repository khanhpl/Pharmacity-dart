import 'package:flutter/material.dart';
import '../services/notification.dart';
import 'package:fluttericon/font_awesome_icons.dart';
AppBar UpAppBar(context) {
  return AppBar(
    backgroundColor: Theme.of(context).primaryColor,
    title: Container(
      height: 40,
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      padding: EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            alignment: Alignment.center,
            iconSize: 30.0,
            color: Colors.grey[400],
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          Expanded(
            child: Text(
              'Tìm trên Pharmacity',
              style: TextStyle(
                color: Colors.black26,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.notifications_none_outlined,size: 30.0,),
        onPressed: () {
          Navigator.pushNamed(context, '/notification');
        },
      ),
      IconButton(
        icon: Icon(FontAwesome.basket,size:30.0),
        onPressed: () {
          Navigator.pushNamed(context, '/shoppingCart');
        },
      ),
    ],
  );
}
