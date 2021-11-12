import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar UpAppBarPHouseSystem(context) {
  var pageWidth = MediaQuery.of(context).size.width;
  var pageHeight = MediaQuery.of(context).size.height;
  return AppBar(
    backgroundColor: Theme.of(context).primaryColor,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: pageWidth,
          child: Text(
            'Hệ thống nhà thuốc Pharmacity',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

      ],
    ),
  );
}
