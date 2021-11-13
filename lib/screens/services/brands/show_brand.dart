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
    height: size.height * 0.10,
      width: size.width * 0.20,
      decoration: BoxDecoration(
        border: Border.all(color:Color(0xFFD6D6D6)),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Container(
          margin: EdgeInsets.all(10.0),
              height: size.height * 0.1 * 0.5,
              width: size.width *0.2 * 0.5 ,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(brand.image),
                  fit: BoxFit.fill,
                ),
              ),

            ),
      ),
    ),
        SizedBox(height:10.0),
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