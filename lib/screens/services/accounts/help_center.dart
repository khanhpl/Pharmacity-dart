import 'package:flutter/material.dart';

class MyHelpCenter extends StatefulWidget {
  @override
  State<MyHelpCenter> createState() {
    return _MyHelpCenterState();
  }
}

class _MyHelpCenterState extends State<MyHelpCenter> {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          centerTitle: true,
          title: Text(
            'Trung tâm trợ giúp',
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
        body: Material(
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
                            alignment: Alignment.center,
                            width: _pageWidth * 0.45,
                            child: Text('Câu hỏi thường gặp'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            alignment: Alignment.center,
                            width: _pageWidth * 0.45,
                            child: Text('ExtraCare'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        children: <Widget>[
                          ReceiptOne(),
                          ReceiptTwo(),
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

class ReceiptTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Container(
                      width: _pageWidth*0.8,
                      child: Text(
                        'Làm sao để nâng hạng VIP?',
                      ),
                    ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Container(
                      width: _pageWidth*0.8,
                      child: Text(
                        'Làm sao để nhận quà sinh nhật?',
                      ),
                    ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Container(
                      width: _pageWidth*0.8,
                      child: Text(
                        'Chương trình mua sản phẩm thứ 2 với giá 1.000 VNĐ có áp dụng cho tất cả sản phẩm không?',
                      ),
                    ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Container(
                      width: _pageWidth*0.8,
                      child: Text(
                        'Làm sao để nhận Quà tặng VIP?',
                      ),
                    ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ReceiptOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Làm thế nào để đăng ký tài khoản trên ứng dụng Pharmacity?',
                      ),
                      width: _pageWidth*0.8,
                    ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Làm thế nào để kiểm tra tình trạng và lịch sử đơn hàng trên ứng dụng Pharmacity',
                      ),
                      width: _pageWidth*0.8,
                    ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Container(
                      width: _pageWidth*0.8,
                      child: Text(
                        'Làm thế nào để đặt hàng trên ứng dụng Pharmacity',
                      ),
                    ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Container(
                      width: _pageWidth*0.8,
                      child: Text(
                        'Làm thế nào để biết đơn hàng đặt thành công?',
                      ),
                    ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Container(
                      width: _pageWidth*0.8,
                      child: Text(
                        'Pharmacity có hỗ trợ xuất hóa đơn VAT không?',
                      ),
                    ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
