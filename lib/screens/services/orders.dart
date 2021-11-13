import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';

class Order extends StatefulWidget {
   Function toggleView;
  Order({required this.toggleView});
  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  bool _isSelected = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
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
            PopupMenuButton(
              onSelected: (bool value) {
                setState(() => _isSelected = value);
              },
              icon: Icon(Icons.menu),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: true,
                  child: Row(
                    children: <Widget>[
                      // Visibility(
                      //   child: Icon(Icons.check_circle_outlined, color: Colors.grey),
                      //   visible: _isSelected1,
                      // ),
                      Opacity(
                        opacity: _isSelected ? 1.0 : 0.0,
                        child: Icon(Icons.check_circle_outlined, color: Colors.grey),
                      ),
                      SizedBox(width: 10.0),
                      Text('Đơn hàng mới nhất'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: false,
                  child: Row(
                    children: <Widget>[
                      // Visibility(
                      //   child: Icon(Icons.check_circle_outlined, color: Colors.grey),
                      //   visible: !_isSelected1,
                      // ),
                      Opacity(
                        opacity: _isSelected ? 0.0 : 1.0,
                        child: Icon(Icons.check_circle_outlined, color: Colors.grey),
                      ),
                      SizedBox(width: 10.0),
                      Text('Đơn hàng cũ nhất'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
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
                      labelColor: Theme.of(context).primaryColor,
                      unselectedLabelColor: Colors.grey,

                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text(
                                'Tất cả',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Chờ xác nhận',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Đang xử lý',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Đang giao',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Đã giao thành công',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // width: size.width * 0.3,
                            child: Text('Hủy',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        children: <Widget>[
                          Receipt(toggleView: widget.toggleView),
                          Receipt(toggleView: widget.toggleView),
                          Receipt(toggleView: widget.toggleView),
                          Receipt(toggleView: widget.toggleView),
                          Receipt(toggleView: widget.toggleView),
                          Receipt(toggleView: widget.toggleView),
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

class Receipt extends StatefulWidget {
   Function toggleView;
  Receipt({required this.toggleView});

  @override
  State<Receipt> createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.1),
            Icon(
              Typicons.clipboard,
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
                  onPressed: () {
                    widget.toggleView();
                  },
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
