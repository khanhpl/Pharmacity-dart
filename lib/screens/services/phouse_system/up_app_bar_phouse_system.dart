import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar UpAppBarPHouseSystem(context) {
  var pageWidth = MediaQuery.of(context).size.width;
  var pageHeight = MediaQuery.of(context).size.height;
  return AppBar(
    backgroundColor: Colors.blue[700],
    title: Column(
      children: [
        Container(
          width: pageWidth,
          child: Text(
            'Hệ thống nhà thuốc Pharmacity',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

      ],
    ),
  );
}
