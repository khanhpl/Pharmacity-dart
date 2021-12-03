import 'package:flutter/material.dart';
import 'package:pharmacity_dart/screens/services/products_only_on_pharmacity/product_detail.dart';
import 'package:pharmacity_dart/screens/services/shopping_cart.dart';

class Detail extends StatefulWidget {
  ProductDetail product;

  Detail({required this.product});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _edgeInsertLR = MediaQuery.of(context).size.width * 0.03;
    var _edgeInsertTB = MediaQuery.of(context).size.height * 0.03;

    var _pageWidth = MediaQuery.of(context).size.width;
    var _pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors
              .black, // IconThemeData is to change color of Back Arrow Button
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
            height: size.height * 0.05,
            width: size.width * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pharmacitybrand.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShoppingCartPage()));
            },
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: size.width,
        child: Row(
          children: <Widget>[
            Container(
              height: size.height * 0.07,
              width: size.width * 0.4,
              margin: EdgeInsets.only(left: size.width * 0.07),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Mua ngay',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: size.height * 0.07,
                // width: 190,
                margin: EdgeInsets.only(left: size.width * 0.05),
                decoration: BoxDecoration(
                  color: Colors.green.shade600,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.green),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Icon(Icons.shopping_cart_outlined,
                            color: Colors.white),
                      ),
                      Container(
                        child: Text(
                          'Thêm vào giỏ hàng',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin:
            EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.product.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              SizedBox(height: _edgeInsertTB*0.5),
              Container(
                height: _pageHeight * 0.06,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      height: _pageHeight * 0.06,
                      width: _edgeInsertLR ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        color: Color.fromRGBO(185, 223, 255, 1),
                      ),
                    ),
                    Container(
                      height: _pageHeight * 0.06,
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
                          fontSize: _pageHeight * 0.06 * 0.4,
                        ),
                      ),
                    ),
                    Container(
                      height: _pageHeight * 0.06,
                      width: _edgeInsertLR ,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(185, 223, 255, 1),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(185, 223, 255, 1),
                      ),
                      child: Image.asset(
                        widget.product.brand,
                        height: _pageHeight * 0.06,
                        width: _pageWidth * 0.2,
                      ),
                    ),
                    Container(
                      height: _pageHeight * 0.06,
                      width: _edgeInsertLR,
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
              SizedBox(height: _edgeInsertTB),
              Text(
                widget.product.name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: _edgeInsertTB*0.5),
              Text(
                widget.product.price + ' VND',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
