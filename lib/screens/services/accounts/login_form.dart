import 'package:flutter/material.dart';

class MyLoginForm extends StatefulWidget {
  @override
  State<MyLoginForm> createState() => _MyLoginFormState();
}

class _MyLoginFormState extends State<MyLoginForm> {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery
        .of(context)
        .size
        .height;
    var _pageWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[700],
        ),
        child: Column(
          children: [
            //Upp App Bar

            Container(
              width: _pageWidth,
              height: _pageHeight * 0.2,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: _pageWidth * 0.1,
                    margin: EdgeInsets.only(top: _pageHeight * 0.05),
                    // decoration: BoxDecoration(
                    //   color: Colors.red,
                    // ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: _pageWidth * 0.5,
                    margin: EdgeInsets.only(top: _pageHeight * 0.05),
                    child: Image.asset('assets/accounts/ExtraCare.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: _pageHeight * 0.05),
                    child: Image.asset('assets/accounts/Doctor.png'),
                  ),
                ],
              ),
            ),

            //Body

            Container(
              height: _pageHeight * 0.8,
              width: _pageWidth,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: _pageWidth * 0.5 * 0.7,
                          height: _pageHeight * 0.1 * 0.8,
                          margin: EdgeInsets.only(left: _pageWidth * 0.03),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/pharmacity.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: _pageWidth * 0.2,
                          height: _pageHeight * 0.1 * 0.8,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: _pageWidth * 0.05),
                          child: Text(
                            'xin chào!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: _pageWidth * 0.03, right: _pageWidth * 0.03),
                    child: RichText(
                      text: TextSpan(
                        text:
                        'Hãy đăng nhập để được hưởng các đặc quyền riêng dành cho thành viên',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.help,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: _pageHeight * 0.07,
                    margin: EdgeInsets.only(
                        left: _pageWidth * 0.03, top: _pageHeight * 0.05),
                    width: _pageWidth,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.local_phone_outlined),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Số điện thoại',
                              hintStyle: TextStyle(
                                color: Colors.black26,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: _pageHeight * 0.07,
                    margin: EdgeInsets.only(
                        left: _pageWidth * 0.03, top: _pageHeight * 0.05),
                    width: _pageWidth,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.lock_open_outlined),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Mật khẩu',
                              hintStyle: TextStyle(
                                color: Colors.black26,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: _pageWidth,
                    margin: EdgeInsets.only(right: _pageWidth * 0.03, top: 10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Quên mật khẩu?',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      child: Text(
                        'Đăng nhập ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.grey.shade400),
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
                    margin: EdgeInsets.fromLTRB(
                        _pageWidth * 0.03, 10, _pageWidth * 0.03, 0),
                  ),
                  Container(
                    width: _pageWidth,
                    margin: EdgeInsets.fromLTRB(
                        _pageWidth * 0.03, 10, _pageWidth * 0.03, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.deepOrangeAccent),
                      color: Colors.yellow.shade100,
                    ),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: RichText(
                        text: TextSpan(
                          text: 'Bạn đã là thành viên Extracare vui lòng nhấp ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'tạo mật khẩu ',
                              style: TextStyle(
                                color: Colors.green,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text:
                              'để tiếp tục sử dụng. Tất cả thông tin tài khoản và điểm tích lũy đều không thay đổi',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: _pageWidth,
                    margin: EdgeInsets.only(top: _pageHeight * 0.05),
                    alignment: Alignment.center,
                    child: RichText(
                      text:TextSpan(
                        text: 'Bạn chưa có tài khoản? ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "Đăng ký ngay",
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: _pageWidth,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: _pageHeight*0.03),
                    child: Text(
                      'Mua sắm không cần đăng nhập',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                      ),
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
