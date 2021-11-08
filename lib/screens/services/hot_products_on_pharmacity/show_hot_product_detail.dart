import 'package:flutter/material.dart';
import 'package:pharmacity_dart/screens/services/hot_products_on_pharmacity/hot_product_detail.dart';
import 'package:pharmacity_dart/screens/services/shopping_cart.dart';

class HotDetail extends StatefulWidget {
  HotProductDetail product;

  HotDetail({required this.product});

  @override
  _HotDetailState createState() => _HotDetailState();
}

class _HotDetailState extends State<HotDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _edgeInsertLR = size.width*0.03;
    var _edgeInsertTB = size.height * 0.03;
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
            width: size.width * 0.2,
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
              height: size.height * 0.1,
              width: size.width * 0.4,
              margin: EdgeInsets.only(left: size.width * 0.07),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.blue),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Mua ngay',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: size.height * 0.1,
                // width: 190,
                margin: EdgeInsets.only(left: size.width * 0.05),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5.0),
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
                child:Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      child: Container(
                        height: 30.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            widget.product.discount,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 130.0,
                height: 30.0,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[200],
                  image: DecorationImage(
                    image: AssetImage(widget.product.brand),
                    alignment: Alignment.centerRight,
                  ),
                ),
                child: Text(
                  'Thương hiệu',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              Text(
                widget.product.name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    child: Text(
                      widget.product.discountPrice + ' VND',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 20,
                      child: Text(
                        widget.product.price + ' VND',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
