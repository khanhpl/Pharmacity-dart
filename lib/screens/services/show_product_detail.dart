import 'package:flutter/material.dart';
import 'package:pharmacity_dart/screens/services/product_detail.dart';
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
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, // IconThemeData is to change color of Back Arrow Button
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartPage()));
            },
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      floatingActionButton: Row(
        children: <Widget>[
          SizedBox(width: 20),
          Container(
            height: size.height * 0.1,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5.0),
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
          SizedBox(width: 10),
          Container(
            height: size.height * 0.1,
            width: 190,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.green),
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  SizedBox(width: 5.0),
                  Icon(Icons.shopping_cart_outlined, color: Colors.white),
                  SizedBox(width: 5.0),
                  Text(
                    'Thêm vào giỏ hàng',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 5.0,right: 5.0),
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