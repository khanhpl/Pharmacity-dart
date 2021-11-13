import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmacity_dart/screens/services/brands/brand.dart';
import 'package:pharmacity_dart/screens/services/brands/show_brand.dart';
import 'package:pharmacity_dart/screens/services/hot_products_on_pharmacity/hot_product_detail.dart';
import 'package:pharmacity_dart/screens/services/hot_products_on_pharmacity/hot_product_on_pharmacity.dart';
import 'package:pharmacity_dart/screens/services/products_only_on_pharmacity/product_detail.dart';
import 'package:pharmacity_dart/screens/services/products_only_on_pharmacity/product_only_pharmacity.dart';
import 'up_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomeScreen extends StatefulWidget {
  ScrollController scrollController;

  MyHomeScreen({required this.scrollController});

  @override
  HomeScreen createState() {
    return new HomeScreen();
  }
}

class HomeScreen extends State<MyHomeScreen> {
  List<ProductDetail> _detailList = [
    ProductDetail(
        image: 'assets/product3.webp',
        brand: 'assets/pharmacitybrand.png',
        name: 'Bàn chải đánh răng cho răng nhạy cảm',
        price: '30.000'),
    ProductDetail(
        image: 'assets/product4.webp',
        brand: 'assets/pharmacitybrand.png',
        name: 'Băng keo cá nhân bằng da',
        price: '24.000'),
    ProductDetail(
        image: 'assets/product1.webp',
        brand: 'assets/pharmacitybrand.png',
        name: 'Áo mưa cánh dơi Pharmacity',
        price: '59.000'),
    ProductDetail(
        image: 'assets/product2.webp',
        brand: 'assets/pharmacitybrand.png',
        name: 'Áo mưa Pharmacity',
        price: '49.000'),
  ];
  List<HotProductDetail> _detailHotSaleList = [
    HotProductDetail(
        image: 'assets/discount1.webp',
        brand: 'assets/pharmacitybrand.png',
        name: 'Bao cao su siêu mỏng hương bạc hà',
        price: '40.000',
        discount: '-30%',
        discountPrice: '28.000'),
    HotProductDetail(
        image: 'assets/discount2.webp',
        brand: 'assets/pharmacitybrand.png',
        name: 'Bao cao su siêu mỏng hương dâu',
        price: '40.000',
        discount: '-30%',
        discountPrice: '28.000'),
    HotProductDetail(
        image: 'assets/discount3.webp',
        brand: 'assets/pharmacitybrand.png',
        name: 'Bơm tiêm sử dụng 1 lần Vinahankook(10ml/1cc)',
        price: '2.100',
        discount: '-30%',
        discountPrice: '1.470'),
    HotProductDetail(
        image: 'assets/discount4.webp',
        brand: 'assets/pharmacitybrand.png',
        name: 'Chai xịt làm lạnh Starblam(150ml)',
        price: '220.000',
        discount: '-50%',
        discountPrice: '110.000'),
  ];
  List<Brand> _brandList = [
    Brand(image:'assets/pharmacity.png',name: 'Pharmacity'),
    Brand(image:'assets/abbott.png',name: 'Abbott'),
    Brand(image:'assets/microlife.png',name: 'Microlife'),
    Brand(image:'assets/blackmores.png',name: 'Blackmores'),
    Brand(image:'assets/pediasure.png',name: 'PediaSure'),
    Brand(image:'assets/loreal.jpg',name: 'L\'oreal'),

  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    var _edgeInsertLR = size.width * 0.03;
    var _edgeInsertTB = size.height * 0.03;

    var _themeColor = Theme
        .of(context)
        .primaryColor;
    return Scaffold(
      appBar: UpAppBar(context),
      backgroundColor: _themeColor,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          controller: widget.scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(height: _edgeInsertTB),
              Container(
                height: size.height * 0.065,
                decoration: BoxDecoration(
                  color: _themeColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/phouseSystem');
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: size.width * 0.2,
                        child: Image.asset(
                          'assets/phouse.png',
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '635 ',
                          style: TextStyle(
                            fontSize: size.height * 0.06 *0.4,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: 'nhà thuốc trên toàn quốc',
                              style: TextStyle(
                                fontSize: size.height * 0.06 *0.35,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(flex: 4),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: _edgeInsertTB),
              Container(
                margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
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
              SizedBox(height: _edgeInsertTB),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  left: _edgeInsertLR,
                ),
                child: Text(
                  'Dịch vụ yêu thích',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(height: _edgeInsertTB * 0.8),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //row1
                    Container(
                      width: size.width * 0.33,
                      child: Column(
                        children: [
                          //coupon của tôi
                          Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/favoriteServices/coupon.png',
                                width: size.width * 0.3 * 0.33,
                                height: size.width * 0.3 * 0.33,

                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(5),
                                primary: _themeColor,
                              ),
                            ),
                          ),
                          SizedBox(height: _edgeInsertTB * 0.3),
                          Container(
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Coupon\n',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'của tôi',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: _edgeInsertTB * 0.5),

                          //Dược sĩ trực tuyến
                          Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/favoriteServices/doctor-online.png',
                                width: size.width * 0.3 * 0.33,
                                height: size.width * 0.3 * 0.33,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(5),
                                primary: _themeColor,
                              ),
                            ),
                          ),
                          SizedBox(height: _edgeInsertTB * 0.3),
                          Container(
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Dược sĩ\n',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'trực tuyến',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),

                    //Row2
                    Container(
                      width: size.width * 0.33,
                      child: Column(
                        children: [
                          //Thẻ thành viên
                          Container(
                            child: ElevatedButton(

                              onPressed: () {},
                              child: Image.asset(
                                'assets/favoriteServices/member-card.png',
                                width: size.width * 0.3 * 0.33,
                                height: size.width * 0.3 * 0.33,
                                color: Colors.white,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(5),
                                primary: _themeColor,
                              ),
                            ),
                          ),
                          SizedBox(height: _edgeInsertTB * 0.3),
                          Container(
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Thẻ\n',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'thành viên',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: _edgeInsertTB * 0.5),

                          //Tổng đài đặt hàng
                          Container(
                            child: ElevatedButton(

                              onPressed: () {},
                              child: Image.asset(
                                'assets/favoriteServices/hotline.png',
                                width: size.width * 0.3 * 0.33,
                                height: size.width * 0.3 * 0.33,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(5),
                                primary: _themeColor,
                              ),
                            ),
                          ),
                          SizedBox(height: _edgeInsertTB * 0.3),
                          Container(
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Tổng đài\n',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'đặt hàng',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Row3
                    Container(
                      width: size.width * 0.33,
                      child: Column(
                        children: [
                          //Tư vấn trực tuyến
                          Container(
                            child: ElevatedButton(

                              onPressed: () {},
                              child: Image.asset(
                                'assets/favoriteServices/chat-online.png',
                                width: size.width * 0.3 * 0.33,
                                height: size.width * 0.3 * 0.33,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(5),
                                primary: _themeColor,
                              ),
                            ),
                          ),
                          SizedBox(height: _edgeInsertTB * 0.3),
                          Container(
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Tư vấn\n',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'trực tuyến',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: _edgeInsertTB * 0.5),

                          //Thư viện bệnh lý
                          Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/favoriteServices/medical-book.png',
                                width: size.width * 0.3 * 0.33,
                                height: size.width * 0.3 * 0.33,
                                color: Colors.white,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(5),
                                primary: _themeColor,
                              ),
                            ),
                          ),
                          SizedBox(height: _edgeInsertTB * 0.3),
                          Container(
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Thư viện\n',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'bệnh lý',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: _edgeInsertTB),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  left: _edgeInsertLR,
                ),
                child: Text(
                  'Danh mục sản phẩm',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(height: _edgeInsertTB * 0.8),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: size.height * 0.14,
                                  // width: size.width * 0.25,
                                  width: size.width * 0.20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/duocpham.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: _edgeInsertTB * 0.3),
                                Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.2,
                                  child: Text(
                                    'Dược phẩm',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: size.height * 0.14,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/thucphamchucnang.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: _edgeInsertTB * 0.3),
                                Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.2,
                                  child: Text(
                                    'Thực phẩm chức năng',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
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
                                  height: size.height * 0.14,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/chamsocsuckhoe.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: _edgeInsertTB * 0.3),
                                Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.2,
                                  child: Text(
                                    'Chăm sóc sức khỏe',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: size.height * 0.14,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/mevabe.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: _edgeInsertTB * 0.3),
                                Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.2,
                                  child: Text(
                                    'Mẹ và Bé',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
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
                                  height: size.height * 0.14,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/chamsoccanhan.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: _edgeInsertTB * 0.3),
                                Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.2,
                                  child: Text(
                                    'Chăm sóc cá nhân',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: size.height * 0.14,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/chamsocsacdep.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: _edgeInsertTB * 0.3),
                                Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.2,
                                  child: Text(
                                    'Chăm sóc sắc đẹp',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
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
                                  height: size.height * 0.14,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/sanphamtienloi.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: _edgeInsertTB * 0.3),
                                Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.2,
                                  child: Text(
                                    'Sản phẩm tiện lợi',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: size.height * 0.14,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                      AssetImage('assets/thietbiyte.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: _edgeInsertTB * 0.3),
                                Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.2,
                                  child: Text(
                                    'Thiết bị y tế',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: _edgeInsertTB * 0.5),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  left: _edgeInsertLR,
                ),
                child: Text(
                  'Chỉ có tại Pharmacity',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(height: _edgeInsertTB),
              Container(
                margin: EdgeInsets.only(left: _edgeInsertLR),
                height: size.height * 0.405,

                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _detailList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 10.0);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return PharmacityProductOnly(product: _detailList[index]);
                  },
                ),

              ),
              SizedBox(height: _edgeInsertTB),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  left: _edgeInsertLR,
                ),
                child: Text(
                  'Săn deal giá rẻ - bảo vệ sức khỏe',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(height: _edgeInsertTB),
              Container(
                margin: EdgeInsets.only(left: _edgeInsertLR),
                height: size.height * 0.42,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _detailHotSaleList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 10.0);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return PharmacityHotProduct(
                        product: _detailHotSaleList[index]);
                  },
                ),
              ),
              SizedBox(height: _edgeInsertTB),
              Container(
                // alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  left: _edgeInsertLR,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Thương hiệu nổi bật',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: GestureDetector(
                        onTap: () {},
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

                SizedBox(height: _edgeInsertTB),
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                  height: size.height * 0.2,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _brandList.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10.0);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return SpecificBrand(brand: _brandList[index],);
                    },

                  ),
                ),
              ),
            ],
          ),
        ),
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
