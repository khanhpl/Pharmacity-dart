import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pharmacity_dart/screens/services/products_only_on_pharmacity/product_detail.dart';
import 'package:pharmacity_dart/screens/services/products_only_on_pharmacity/show_product_detail.dart';

class PharmacityProductOnly extends StatelessWidget {
  ProductDetail product;

  PharmacityProductOnly({required this.product});

  @override
  Widget build(BuildContext context) {
    var _edgeInsertLR = MediaQuery.of(context).size.width * 0.03;
    var _edgeInsertTB = MediaQuery.of(context).size.height * 0.03;

    var _pageWidth = MediaQuery.of(context).size.width;
    var _pageHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      width: _pageWidth * 0.45,
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Detail(product: product)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: _pageHeight * 0.17,
              width: _pageWidth * 0.4,
              child: Image.asset(product.image),
            ),
            Container(
              height: _pageHeight * 0.03,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Container(
                    height: _pageHeight * 0.03,
                    width: _edgeInsertLR * 0.33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      color: Color.fromRGBO(185, 223, 255, 1),
                    ),
                  ),
                  Container(
                    height: _pageHeight * 0.03,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(185, 223, 255, 1),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Thương hiệu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w400,
                        fontSize: _pageHeight * 0.03 * 0.5,
                      ),
                    ),
                  ),
                  Container(
                    height: _pageHeight * 0.03,
                    width: _edgeInsertLR * 0.33,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(185, 223, 255, 1),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(185, 223, 255, 1),
                    ),
                    child: Image.asset(
                      product.brand,
                      height: _pageHeight * 0.03,
                      width: _pageWidth * 0.45 * 0.22,
                    ),
                  ),
                  Container(
                    height: _pageHeight * 0.03,
                    width: _edgeInsertLR * 0.33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Color.fromRGBO(185, 223, 255, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: _pageHeight * 0.01),
            Container(
              height: _pageHeight * 0.05,
              child: Text(
                product.name,
                maxLines: 2,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: _pageHeight * 0.018,
                ),
              ),
            ),
            SizedBox(height: _pageHeight * 0.02),
            Container(
              height: _pageHeight * 0.04,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: _pageHeight * 0.025,
                    color: Colors.red.shade700,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: product.price + ' VND',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: '/cái!',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: _pageHeight * 0.022,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: _pageHeight * 0.015),
            Container(
              height: _pageHeight * 0.045,
              width: _pageWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green.shade700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Thêm vào giỏ hàng',
                  style: TextStyle(
                    fontSize: _pageHeight * 0.045 * 0.3,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
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
