import 'package:flutter/material.dart';
import 'package:pharmacity_dart/screens/services/product_detail.dart';
import 'package:pharmacity_dart/screens/services/show_product_detail.dart';

class PharmacityProductOnly extends StatelessWidget {
  ProductDetail product;
  PharmacityProductOnly({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      width: size.width * 0.45,
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(product: product)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: size.height * 0.2,
              width: size.width * 0.4,
              // margin: EdgeInsets.only(
              //   left: 10.0,
              // ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 20.0,
              width: 140,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[200],
                image: DecorationImage(image: AssetImage(product.brand), alignment: Alignment.centerRight),
              ),
              child: Text(
                'Thương hiệu',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
              ),
            ),
            Container(
              height: 35.0,
              child: Text(
                product.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.red,
                ),
                children: <TextSpan>[
                  TextSpan(text: product.price + ' VND', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'cái!'),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              width: 180,
              height: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                child: Text(
                  'Thêm vào giỏ hàng',
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}