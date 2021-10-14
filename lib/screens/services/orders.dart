import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          centerTitle: true,
          title: Text(
            'Lịch sử đơn hàng',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[700],
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: TabBar(
                      isScrollable: true,
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.grey,
                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Tất cả'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Chờ xác nhận'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Đang xử lý'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Đang giao'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Đã giao thành công'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Hủy'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        children: <Widget>[
                          Receipt(),
                          Receipt(),
                          Receipt(),
                          Receipt(),
                          Receipt(),
                          Receipt(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Receipt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.1),
            Icon(
              Icons.list_alt_outlined,
              color: Colors.grey[200],
              size: 150.0,
            ),
            Text(
              'Bạn chưa có đơn hàng nào',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 23,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: size.height * 0.1,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Mua sắm ngay',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
