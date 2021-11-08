import 'package:flutter/material.dart';
import 'package:pharmacity_dart/screens/services/products_only_on_pharmacity/product_detail.dart';
import 'package:pharmacity_dart/screens/services/products_only_on_pharmacity/show_product_detail.dart';

class PharmacityProductOnly extends StatelessWidget {
  ProductDetail product;

  PharmacityProductOnly({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _edgeInsertLR = size.width*0.03;
    var _edgeInsertTB = size.height * 0.03;
    return Container(
      height: size.height * 0.42,
      width: size.width * 0.45,
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Detail(product: product)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: size.height * 0.17,
              width: size.width * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 20.0,
              width: size.width * 0.3,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Text(
                    'Thương hiệu',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(product.brand),
                  ),
                ],
              ),
            ),
            Container(
              height: 35.0,
              child: Text(
                product.name,
                maxLines: 2,
                textAlign: TextAlign.start,
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
                  fontSize: 16,
                  color: Colors.red,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: product.price + ' VND',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '/cái!'),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              width: size.width * 0.35,
              height: size.height * 0.06,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                child: Text(
                  'Thêm vào giỏ hàng',
                  style: TextStyle(
                    fontSize: 11,
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
