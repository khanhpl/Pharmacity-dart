import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;

    var _edgeInsertLR = MediaQuery.of(context).size.width * 0.03;
    var _edgeInsertTB = MediaQuery.of(context).size.height * 0.03;

    var _themeColor = Theme.of(context).primaryColor;
    return Container(
      decoration: BoxDecoration(
        color: _themeColor,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: _edgeInsertTB * 2),
            Container(
              width: _pageWidth,
              margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: _edgeInsertTB * 0.5),
                  Container(
                    child: Text(
                      'Bạn chưa đăng nhập',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _pageHeight * 0.019,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: _edgeInsertLR),
                  ),
                  SizedBox(height: _edgeInsertTB * 0.8),
                  Container(
                    child: Text(
                      'Hãy đăng nhập để được hưởng các đặc quyền riêng dành cho thành viên',
                      style: TextStyle(
                        fontSize: _pageHeight * 0.019,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: _edgeInsertLR),
                  ),
                  SizedBox(height: _edgeInsertTB * 0.8),
                  Container(
                    child: ElevatedButton(
                      child: Text(
                        'Đăng nhập ngay ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _pageHeight * 0.019,
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
                    height: _pageHeight * 0.06,
                    margin:
                        EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
                  ),
                  SizedBox(height: _edgeInsertTB * 0.5),
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
                            child: ImageIcon(
                              AssetImage(
                                  'assets/accounts/src_assets_icons_icmember.png'),
                            ),
                            width: _pageWidth * 0.1,
                          ),
                          Container(
                            child:
                                Text('Quy chế xếp hạng thành viên ExtraCare',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
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
                            child: ImageIcon(
                              AssetImage(
                                  'assets/accounts/question.png'),
                            ),
                            width: _pageWidth * 0.1,
                          ),
                          Container(
                            child: Text('Trung tâm trợ giúp',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
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
                            child: ImageIcon(
                              AssetImage(
                                  'assets/accounts/setting.png'),
                            ),
                            width: _pageWidth * 0.1,
                          ),
                          Container(
                            child: Text('Cài đặt',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
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
                                Text('Tư vấn đặt hàng',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
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
