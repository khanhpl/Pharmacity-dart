import 'package:flutter/material.dart';
import 'package:pharmacity_dart/screens/services/phouse_system/up_app_bar_phouse_system.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyPHouseSystemPage extends StatefulWidget {
  @override
  _phouseSystemScreen createState() {
    return new _phouseSystemScreen();
  }
}

class _phouseSystemScreen extends State<MyPHouseSystemPage> {
  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;

    var _edgeInsertLR = MediaQuery.of(context).size.width * 0.03;
    var _edgeInsertTB = MediaQuery.of(context).size.height * 0.03;
    final _key1 =
        GlobalKey(); // key use for container contain up icon and contact
    return Scaffold(
      appBar: UpAppBarPHouseSystem(context),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: pageHeight * 0.2,
                key: _key1,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: pageWidth,
                      height: pageHeight * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: pageWidth * 0.5,
                            child: (Image.asset('assets/phouse.png')),
                          ),
                          Container(
                            width: pageWidth * 0.5,
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                Container(
                                  height: pageHeight * 0.2 * 0.2,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(),
                                  child: Container(
                                    width: pageWidth * 0.5 * 0.7,
                                    height: pageHeight * 0.2 * 0.2,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/pharmacity.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: pageHeight * 0.2 * 0.2,
                                  alignment: Alignment.centerLeft,
                                  width: pageWidth * 0.5,
                                  child: Text(
                                    'Nhà thuốc tiện lợi',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: pageWidth * 0.5,
                                  height: pageHeight * 0.2 * 0.3,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(Icons.location_on_outlined),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            5.0, 0.0, 0.0, 0.0),
                                        width: pageWidth * 0.5 * 0.8,
                                        child: Column(
                                          children: [
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height:
                                                  pageHeight * 0.2 * 0.3 * 0.5,
                                              child: Text(
                                                "644 nhà thuốc",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height:
                                                  pageHeight * 0.2 * 0.3 * 0.5,
                                              width: pageWidth * 0.5 * 0.8,
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Pharmacity',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: pageWidth * 0.5,
                                  height: pageHeight * 0.2 * 0.3,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(Icons.access_time_outlined),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            5.0, 0.0, 0.0, 0.0),
                                        width: pageWidth * 0.5 * 0.8,
                                        child: Column(
                                          children: [
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height:
                                                  pageHeight * 0.2 * 0.3 * 0.5,
                                              child: Text(
                                                "Mở cửa 24/7",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height:
                                                  pageHeight * 0.2 * 0.3 * 0.5,
                                              width: pageWidth * 0.5 * 0.8,
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Giúp sức mùa Covid',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Finding address
              SizedBox(height: _edgeInsertTB),
              Container(
                height: pageHeight * 0.15,
                width: pageWidth,
                child: Container(
                  margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey.shade900),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: pageHeight * 0.15 * 0.5,
                        margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0.0, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Tìm địa chỉ nhà thuốc Phamacity',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0.0, 0, 0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.green.shade700,
                            ),
                            Text(
                              'Tìm nhà thuốc gần bạn',
                              style: TextStyle(
                                color: Colors.green.shade700,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: _edgeInsertTB),
              //google map
              Container(
                width: pageWidth,
                height: pageHeight * 0.3,
                child: GoogleMap(
                  onMapCreated: (GoogleMapController controller) {},
                  initialCameraPosition: CameraPosition(
                    target: LatLng(10.757961017276871, 106.68779575658085),
                  ),
                ),
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'Có 5 nhà thuốc Pharmacity gần bạn',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //pharmacity information
              SizedBox(height: _edgeInsertTB),
              Container(
                // height: pageHeight * 0.15,
                margin: EdgeInsets.fromLTRB(_edgeInsertLR, 0, _edgeInsertLR, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey.shade900),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: 'Địa chỉ: ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  '288 Nơ trang Long, Phường 12, Quận Bình Thạnh, Thành phố Hồ Chí Minh',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 5.0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: 'Tên nhà thuốc: ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: '288 Nơ trang Long',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 5.0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: 'Mã nhà thuốc: ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'SGPMC090',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: _edgeInsertTB),
            ],
          ),
        ),
      ),
    );
  }
}
