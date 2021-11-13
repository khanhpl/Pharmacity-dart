import 'package:flutter/material.dart';

class MyAccountSetting extends StatefulWidget {
  @override
  State<MyAccountSetting> createState() {
    return _MyAccountSettingState();
  }
}

class _MyAccountSettingState extends State<MyAccountSetting> {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        centerTitle: true,
        title: Container(
          child: Text('Cài đặt'),

        ),
      ),
      body: Material(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[700],
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  width: _pageWidth,
                  height: _pageHeight * 0.2,
                  child: Row(
                    children: [
                      Container(
                        // child: Image.asset(
                        //   'assets/accounts/PharmacityLogo.png',
                        //   width: _pageWidth * 0.25,
                        //   height: _pageHeight * 0.18,
                        // ),
                        width: _pageWidth * 0.45,
                        height:_pageHeight *0.15,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/accounts/PharmacityLogo.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: _pageWidth * 0.7,
                                child: Text(
                                  'Pharmacity app.',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                width: _pageWidth * 0.7,
                                child: Text(
                                  'Version 2.1.2',
                                  style: TextStyle(
                                    fontSize: 17,
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
                ),
                Container(
                  width: _pageWidth,
                  height: _pageHeight * 0.67,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(Icons.language),
                              width: _pageWidth * 0.1,
                            ),
                            Container(
                              child: Text('Ngôn Ngữ'),
                            ),
                            Expanded(
                              child: Container(
                                // alignment: Alignment.centerRight,
                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.stars_rounded),
                                    Text('Tiếng Việt'),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
