import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'bot_nav_nar.dart';
import 'up_nav_bar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: UpAppBar(context),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[700],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Container(
                  height: size.height * 0.10,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/phouse.png'),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerLeft),
                  ),
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 80),
                        Text(
                          '635 nhà thuốc trên toàn quốc',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: CaroselImage,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Text(
                    'Dịch vụ yêu thích',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.2,
                  // color: Colors.green,
                  margin: EdgeInsets.only(
                    left: 10.0,
                    top: 10.0,
                    right: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30.0,
                            child: IconButton(
                              iconSize: 40,
                              icon: Icon(
                                Icons.smartphone,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            '  Dược sĩ\ntrực tuyến',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30.0,
                            child: IconButton(
                              iconSize: 40,
                              icon: Icon(Icons.call),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            ' Tổng Đài\n Đặt Hàng',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30.0,
                            child: IconButton(
                              iconSize: 40,
                              icon: Icon(Icons.chat_bubble_outline_outlined),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            '   Tư vấn\n trực tuyến',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30.0,
                            child: IconButton(
                              iconSize: 40,
                              icon: Icon(Icons.library_add_outlined),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            'Thư viện\n bệnh lý',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Text(
                    'Danh mục sản phẩm',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  // color: Colors.black,
                  height: size.height * 0.55,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: size.height * 0.23 - 2,
                                    width: size.width * 0.30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/duocpham.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Text('Dược phẩm'),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: size.height * 0.2,
                                    width: size.width * 0.30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/thucphamchucnang.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Text('Thực phẩm\n chức năng'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: size.height * 0.2,
                                    width: size.width * 0.30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/chamsocsuckhoe.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Text('Chăm sóc\nsức khỏe'),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: size.height * 0.22 + 4,
                                    width: size.width * 0.30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/mevabe.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Text('Mẹ và Bé'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: size.height * 0.2,
                                    width: size.width * 0.30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/chamsoccanhan.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Text('Chăm sóc\n cá nhân'),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: size.height * 0.2,
                                    width: size.width * 0.30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/chamsocsacdep.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Text('Chăm sóc\n  sắc đẹp'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: size.height * 0.2,
                                    width: size.width * 0.30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/sanphamtienloi.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Text('Sản phẩm\n  tiện lợi'),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: size.height * 0.2,
                                    width: size.width * 0.30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/thietbiyte.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Text('Thiết bị\n    y tế'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Text(
                    'Chỉ có tại Pharmacity',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: size.height * 0.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(width: 10.0),
                        OutlinedButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: size.height * 0.2,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/product1.webp'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 30.0,
                                width: 140,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/pharmacitybrand.png'),
                                      alignment: Alignment.centerRight),
                                ),
                                child: Text(
                                  'Thương hiệu',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.0,
                                child: Text(
                                  'Áo mưa cánh dơi\nPharmacity',
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
                                    fontSize: 20,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '59.000 VND/',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: 'cái!'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  width: 150,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Thêm vào giỏ hàng',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: size.height * 0.2,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/product2.webp'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 30.0,
                                width: 140,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/pharmacitybrand.png'),
                                      alignment: Alignment.centerRight),
                                ),
                                child: Text(
                                  'Thương hiệu',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.0,
                                child: Text(
                                  'Áo mưa Pharmacity',
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
                                    fontSize: 20,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '49.000 VND/',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: 'cái!'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  width: 150,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Thêm vào giỏ hàng',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: size.height * 0.2,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/product3.webp'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 30.0,
                                width: 140,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/pharmacitybrand.png'),
                                      alignment: Alignment.centerRight),
                                ),
                                child: Text(
                                  'Thương hiệu',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.0,
                                child: Text(
                                  'Bàn chải đánh răng\n cho răng nhạy cảm',
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
                                    fontSize: 20,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '30.000 VND/',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: 'cái!'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  width: 150,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Thêm vào giỏ hàng',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: size.height * 0.2,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/product4.webp'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 30.0,
                                width: 140,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/pharmacitybrand.png'),
                                      alignment: Alignment.centerRight),
                                ),
                                child: Text(
                                  'Thương hiệu',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.0,
                                child: Text(
                                  'Băng keo cá nhân màu da',
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
                                    fontSize: 20,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '24.000 VND/',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: 'cái!'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  width: 150,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Thêm vào giỏ hàng',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Text(
                    'Săn deal giá rẻ - bảo vệ sức khỏe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: size.height * 0.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(width: 10.0),
                        OutlinedButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: size.height * 0.2,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/discount1.webp'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        height: 30.0,
                                        width: 50.0,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Text(
                                          '-30%',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30.0,
                                width: 140,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/pharmacitybrand.png'),
                                      alignment: Alignment.centerRight),
                                ),
                                child: Text(
                                  'Thương hiệu',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.0,
                                child: Text(
                                  'Bao cao su siêu\nmỏng hương bạc hà',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '40.000 VND',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '28.000 VND/',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: 'cái!'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  width: 150,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Thêm vào giỏ hàng',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: size.height * 0.2,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/discount2.webp'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        height: 30.0,
                                        width: 50.0,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Text(
                                          '-30%',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30.0,
                                width: 140,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/pharmacitybrand.png'),
                                      alignment: Alignment.centerRight),
                                ),
                                child: Text(
                                  'Thương hiệu',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.0,
                                child: Text(
                                  'Bao cao su siêu\nmỏng hương dâu',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '40.000 VND',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '28.000 VND/',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: 'cái!'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  width: 150,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Thêm vào giỏ hàng',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: size.height * 0.2,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/discount3.webp'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        height: 30.0,
                                        width: 50.0,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Text(
                                          '-30%',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30.0,
                                width: 140,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/pharmacitybrand.png'),
                                      alignment: Alignment.centerRight),
                                ),
                                child: Text(
                                  'Thương hiệu',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.0,
                                child: Text(
                                  'Bơm tiêm sử dụng 1 lần\n vinahankook(10ml/cc)',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '2.100 VND',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '1.470 VND/',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: 'cái!'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  width: 150,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Thêm vào giỏ hàng',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: size.height * 0.2,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/discount4.webp'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        height: 30.0,
                                        width: 50.0,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Text(
                                          '-50%',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30.0,
                                width: 140,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/pharmacitybrand.png'),
                                      alignment: Alignment.centerRight),
                                ),
                                child: Text(
                                  'Thương hiệu',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.0,
                                child: Text(
                                  'Chai xịt làm lạnh Starbalm\n(150ml)',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '220.000 VND',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '110.000 VND/',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: 'cái!'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  width: 150,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Thêm vào giỏ hàng',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: Text(
                        'Thương hiệu nổi bật',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "");
                        },
                        child: Text(
                          "Xem tất cả",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  height: size.height * 0.15,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(width: 10.0),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: size.height * 0.1,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/pharmacity.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Pharmacity',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: size.height * 0.1,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/abbott.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Abbott',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: size.height * 0.1,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/microlife.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Microlife',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: size.height * 0.1,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/blackmores.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Blackmores',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: size.height * 0.1,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/pediasure.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'PediaSure',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: size.height * 0.1,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/loreal.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'L\'oreal',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
      floatingActionButton: IconButton(
        icon: Icon(Icons.shopping_cart_outlined),
        onPressed: () {},
        color: Colors.blue,
      ),
    );
  }
}

Widget CaroselImage = Center(
  child: Carousel(
    images: [
      AssetImage('assets/slide1.webp'),
      AssetImage('assets/slide2.webp'),
      AssetImage('assets/slide3.webp'),
      AssetImage('assets/slide4.webp'),
      AssetImage('assets/slide5.webp'),
    ],
    autoplay: true,
    dotSize: 5,
    dotSpacing: 30,
    indicatorBgPadding: 0,
    autoplayDuration: Duration(seconds: 5),
    borderRadius: true,
    dotBgColor: Colors.black.withOpacity(0.1),
  ),
);
