import 'package:flutter/material.dart';
import 'package:pharmacity_dart/screens/services/hot_products_on_pharmacity/hot_product_detail.dart';
import 'package:pharmacity_dart/screens/services/hot_products_on_pharmacity/show_hot_product_detail.dart';

class PharmacityHotProduct extends StatelessWidget {
  HotProductDetail product;

  PharmacityHotProduct({required this.product});

  @override
  Widget build(BuildContext context) {
    var _edgeInsertLR = MediaQuery.of(context).size.width * 0.03;
    var _edgeInsertTB = MediaQuery.of(context).size.height * 0.03;

    var _pageWidth = MediaQuery.of(context).size.width;
    var _pageHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(15),
      ),
      width: _pageWidth * 0.45,
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotDetail(product: product)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: _pageHeight * 0.17,
              width: _pageWidth * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: Container(
                      height: _pageHeight*0.03,
                      width: _pageWidth*0.45*0.25,
                      decoration: BoxDecoration(
                        color: Colors.red.shade700,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          product.discount,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
            SizedBox(height: _pageHeight * 0.003),
            Container(
              height: _pageHeight*0.022,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: _pageHeight*0.018,
                    color: Colors.grey,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: product.price + ' VND',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: _pageHeight * 0.006),
            Container(
              height: _pageHeight * 0.03,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: _pageHeight * 0.023,
                    color: Colors.red.shade600,
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
                        ),
                    ),
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
                  backgroundColor: Colors.green.shade600,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Thêm vào giỏ hàng',
                  style: TextStyle(
                    fontSize: _pageHeight * 0.045 * 0.35,
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
