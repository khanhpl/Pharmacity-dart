import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[700],
      ),
      child: Column(
        children: [
          Container(
            width: _pageWidth,
            height: _pageHeight * 0.2,
            margin: EdgeInsets.fromLTRB(10.0, _pageHeight * 0.06, 10, 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
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
                  margin: EdgeInsets.only(left: 10),
                ),
                Container(
                  height: _pageHeight * 0.2 * 0.3,
                  child: Text(
                      'Hãy đăng nhập để được hưởng các đặc quyền riêng dành cho thành viên'),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  width: _pageWidth,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ],
            ),
          ),
          Container(
            width: _pageWidth,
            height: _pageHeight * 0.62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: _pageHeight * 0.075,
                  width: _pageWidth,
                  child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.album),
                        width: _pageWidth*0.1,
                      ),
                      Container(
                        child: Text('Quy chế xếp hạng thành viên ExtraCare'),
                        width: _pageWidth*0.8,
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
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
                  child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.help_center_outlined),
                        width: _pageWidth*0.1,
                      ),
                      Container(
                        child: Text('Trung tâm trợ giúp'),
                        width: _pageWidth*0.8,
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
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
                  child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.settings_applications_sharp),
                        width: _pageWidth*0.1,
                      ),
                      Container(
                        child: Text('Cài đặt'),
                        width: _pageWidth*0.8,
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                ),
                Container(
                  height: _pageHeight * 0.1,
                  width: _pageWidth *0.4,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.shade100),
                    ),
                  ),
                  child: Row(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
