import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    IconButton(
                      color: Colors.grey,
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Tìm trên Pharmacity',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_basket),
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/Pharmacity-Logo.png"),
                      Expanded(
                        child: Text(
                          '635 nhà thuốc trên toàn quốc',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  height: 150.0,
                  width: 350.0,
                  child: Carousel(
                    images: [
                      ExactAssetImage("assets/slider1.webp"),
                      ExactAssetImage("assets/slider2.webp"),
                      ExactAssetImage("assets/slider3.webp"),
                      ExactAssetImage("assets/slider4.webp"),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
