import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class MyUserRanking extends StatefulWidget {
  @override
  State<MyUserRanking> createState() {
    return _MyUserRankingState();
  }
}

class _MyUserRankingState extends State<MyUserRanking> {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;

    var _edgeInsertLR = MediaQuery.of(context).size.width * 0.03;
    var _edgeInsertTB = MediaQuery.of(context).size.height * 0.03;

    var _themeColor = Theme.of(context).primaryColor;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: _themeColor,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text('Quy chế xếp hạng'),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: _edgeInsertTB),
              Container(
                width: _pageWidth,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(height: _edgeInsertTB*0.5),
                    Container(
                      child: RichText(
                        text: TextSpan(
                          text: 'Xếp hạng của bạn ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: '(0 điểm)',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: _edgeInsertTB*0.5),
                    Container(
                      child: Image.asset('assets/accounts/src_assets_newprofile_icprofilesilver.png',
                        width: _pageWidth*0.03,
                        height: _pageHeight*0.03,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: _pageHeight * 0.25 * 0.05),
                      child: Text(
                        'Thành viên',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: _pageHeight * 0.25 * 0.1),
                      child: Container(
                        width: _pageWidth * 0.7,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Container(
                      width: _pageWidth * 0.85,
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset('assets/accounts/src_assets_newprofile_icprofilesilver.png',
                                    width: _pageWidth*0.03,
                                    height: _pageHeight*0.03,
                                  ),
                                ),
                                Text('Thành viên',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: _pageWidth * 0.05),
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset('assets/accounts/src_assets_icons_icmedalmember.png',
                                      width: _pageWidth*0.05,
                                      height: _pageHeight*0.05,
                                    ),
                                  ),
                                  Text('V.I.P'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: _edgeInsertTB),
              //BODY
              Container(
                width: _pageWidth,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Điều kiện lên hạng',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: _pageWidth * 0.2,
                      child: Divider(
                        color: Colors.blue.shade700,
                        height: _pageWidth * 0.05,
                        thickness: 2.5,
                      ),
                    ),
                    Container(

                      margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
                      child: Text(
                          '* Bạn chỉ cần duy trì chi tiêu tích lũy từ 8.000.000 VNĐ trở lên trong vòng 12 tháng gần nhất sẽ được nâng hạng VIP. '
                          'Hạng VIP của bạn sẽ được giữ trong 365 ngày kể từ ngày nâng hạng. '
                          'Sau khi hết ngày thứ 365, hạng thành viên của bạn sẽ được xét lại dựa trên chi tiêu tích lũy trong 12 tháng gần nhất.'),
                    ),
                    SizedBox(height: _edgeInsertTB),
                    Container(
                      width: _pageWidth,
                      alignment: Alignment.center,
                      child: Dash(
                        direction: Axis.horizontal,
                        length: _pageWidth - 20,
                        dashLength: 12,
                        dashColor: Colors.grey,
                      ),
                    ),
                    SizedBox(height: _edgeInsertTB),
                    Container(
                      child: Text(
                        'Phân loại hạng thành viên',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: _pageWidth * 0.2,
                      child: Divider(
                        color: Colors.blue.shade700,
                        height: _pageWidth * 0.05,
                        thickness: 2.5,
                      ),
                    ),
                    SizedBox(height: _edgeInsertTB),
                    Container(
                      width: _pageWidth,
                      height: _pageHeight * 0.07,
                      margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(185, 223, 255, 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset('assets/accounts/src_assets_newprofile_icprofilesilver.png',
                              width: _pageWidth*0.03,
                              height: _pageHeight*0.03,
                            ),
                            margin: EdgeInsets.only(left: _edgeInsertLR),
                            width: _pageWidth*0.08,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Thành viên',
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
                    SizedBox(height: _edgeInsertTB),
                    Container(
                      width: _pageWidth,
                      height: _pageHeight * 0.07,
                      // alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(185, 223, 255, 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset('assets/accounts/src_assets_icons_icmedalmember.png',
                              width: _pageWidth*0.05,
                              height: _pageHeight*0.05,
                            ),
                            margin: EdgeInsets.only(left: _edgeInsertLR),
                            width: _pageWidth*0.08,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: _edgeInsertLR),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'V.I.P',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Để lên hạng cần thêm ',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '8.000.000 ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'điểm',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
                    SizedBox(height: _edgeInsertTB),
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
