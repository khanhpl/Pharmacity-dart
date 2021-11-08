import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;

    var _edgeInsertLR = MediaQuery.of(context).size.width * 0.03;
    var _edgeInsertTB = MediaQuery.of(context).size.height * 0.03;
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[700],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: _edgeInsertTB * 2),
            Container(
              width: _pageWidth,
              height: _pageHeight * 0.23,
              margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: _pageHeight * 0.2 * 0.3,
                    child: Text(
                      'Bạn chưa đăng nhập',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: _edgeInsertLR),
                  ),
                  Container(
                    height: _pageHeight * 0.2 * 0.3,
                    child: Text(
                        'Hãy đăng nhập để được hưởng các đặc quyền riêng dành cho thành viên'),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: _edgeInsertLR),
                  ),
                  Container(
                    child: ElevatedButton(
                      child: Text(
                        'Đăng nhập ngay ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Theme.of(context).primaryColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginForm');
                      },
                    ),
                    width: _pageWidth,
                    margin:
                        EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: _edgeInsertTB),
            Container(
              width: _pageWidth,
              height: _pageHeight * 0.62,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: _pageHeight * 0.075,
                    // width: _pageWidth,
                    child: FlatButton(
                      child: Row(
                        children: [
                          Container(
                            child: Icon(Icons.album),
                            width: _pageWidth * 0.1,
                          ),
                          Container(
                            child:
                                Text('Quy chế xếp hạng thành viên ExtraCare'),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/userRanking');
                      },
                    ),
                  ),
                  Container(
                    height: _pageHeight * 0.025,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                    ),
                  ),
                  Container(
                    height: _pageHeight * 0.075,
                    width: _pageWidth,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade100),
                      ),
                    ),
                    child: FlatButton(
                      child: Row(
                        children: [
                          Container(
                            child: Icon(Icons.help_center_outlined),
                            width: _pageWidth * 0.1,
                          ),
                          Container(
                            child: Text('Trung tâm trợ giúp'),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/helpCenter');
                      },
                    ),
                  ),
                  Container(
                    height: _pageHeight * 0.075,
                    width: _pageWidth,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade100),
                      ),
                    ),
                    child: FlatButton(
                      child: Row(
                        children: [
                          Container(
                            child: Icon(Icons.settings_applications_sharp),
                            width: _pageWidth * 0.1,
                          ),
                          Container(
                            child: Text('Cài đặt'),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/accountSetting');
                      },
                    ),
                  ),
                  Container(
                    height: _pageHeight * 0.1,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade100),
                      ),
                    ),
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(Icons.support_agent_outlined),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text(
                                  '1800 6821',
                                  style: TextStyle(
                                    color: Colors.blue[700],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Tư vấn đặt hàng'),
                              ],
                            ),
                          )
                        ],
                      ),
                      onPressed: () {
                        launch("tel://18006821");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
