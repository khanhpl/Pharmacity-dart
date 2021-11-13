import 'package:flutter/material.dart';

import 'brand.dart';

class SpecificBrand extends StatelessWidget{
  Brand brand;

  SpecificBrand({required this.brand});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
    Container(
    height: size.height * 0.15,
      width: size.width * 0.25,
      decoration: BoxDecoration(
        border: Border.all(color:Color(0xFFD6D6D6)),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Container(
          margin: EdgeInsets.all(15.0),
              height: 40,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(brand.image),
                  fit: BoxFit.fill,
                ),
              ),

            ),
      ),
    ),
        SizedBox(height:5.0),
        Text(
          brand.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13.0,
          ),
        ),

    ],
      );

  }

}