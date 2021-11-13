import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'product.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  List<Product> list = [
    Product(image: 'assets/pharmacity.png', name: 'Pharmacity'),
    Product(image: 'assets/duocpham.png', name: 'Dược phẩm'),
    Product(image: 'assets/chamsocsuckhoe.png', name: 'Chăm sóc\nsức khỏe'),
    Product(image: 'assets/chamsoccanhan.png', name: 'Chăm sóc\ncá nhân'),
    Product(image: 'assets/sanphamtienloi.png', name: 'Sản phẩm\ntiện lợi'),
    Product(image: 'assets/thucphamchucnang.png', name: 'Thực phẩm\nchức năng'),
    Product(image: 'assets/mevabe.png', name: 'Mẹ và Bé'),
    Product(image: 'assets/chamsocsacdep.png', name: 'Chăm sóc\nsắc đẹp'),
    Product(image: 'assets/thietbiyte.png', name: 'Thiết bị\ny tế')
  ];

  List<Product> list_pharmacity = [
    Product(image: 'assets/xemtatca.jpg', name: 'Xem tất cả')
  ];
  List<Product> list_duocpham = [
    Product(image: 'assets/xemtatca.jpg', name: 'Xem tất cả'),
    Product(image: 'assets/thuockhongkedon.jpg', name: 'Thuốc không kê đơn'),
    Product(image: 'assets/thuockedon.png', name: 'Thuốc kê đơn'),
  ];
  List<Product> list_chamsocsuckhoe = [
    Product(image: 'assets/xemtatca.jpg', name: 'Xem tất cả'),
    Product(image: 'assets/duocmypham.jpg', name: 'Dược mỹ phẩm'),
    Product(
        image: 'assets/thucphamdinhduong.jpg', name: 'Thực phẩm dinh dưỡng'),
    Product(image: 'assets/dungcusocuu.jpg', name: 'Dụng cụ sơ cứu'),
    Product(image: 'assets/kehoachgiadinh.jpg', name: 'Kế hoạch gia đình'),
    Product(image: 'assets/chamsocmattaimui.jpg', name: 'Chăm sóc Mắt/Tai/Mũi'),
    Product(image: 'assets/chamsocchan.jpg', name: 'Chăm sóc chân'),
    Product(image: 'assets/chamsocsuckhoe.png', name: 'Khẩu trang y tế'),
    Product(image: 'assets/chongmuoi.png', name: 'Chống muỗi'),
    Product(image: 'assets/dautramdauxoabop.png', name: 'Dầu tràm,dầu xoa bóp')
  ];
  List<Product> list_chamsoccanhan = [
    Product(image: 'assets/xemtatca.jpg', name: 'Xem tất cả'),
    Product(image: 'assets/sanphamphongtam.png', name: 'Sản phẩm phòng tắm'),
    Product(image: 'assets/chamsoccothe.png', name: 'Chăm sóc cơ thể'),
    Product(image: 'assets/sanphamkhumui.png', name: 'Sản phẩm khử mùi'),
    Product(image: 'assets/chamsoctoc.png', name: 'Chăm sóc tóc'),
    Product(image: 'assets/vesinhphunu.png', name: 'Vệ sinh phụ nữ'),
    Product(image: 'assets/chamsocnamgioi.png', name: 'Chăm sóc nam giới'),
    Product(image: 'assets/chamsocrangmieng.png', name: 'Chăm sóc răng miệng'),
    Product(image: 'assets/sanphamtaylong.png', name: 'Sản phẩm tẩy lông')
  ];
  List<Product> list_sanphamtienloi = [
    Product(image: 'assets/xemtatca.jpg', name: 'Xem tất cả'),
    Product(image: 'assets/sanphamtienloi.png', name: 'Hàng tổng hợp'),
    Product(image: 'assets/hangbachhoa.png', name: 'Hàng bách hóa')
  ];
  List<Product> list_thucphamchucnang = [
    Product(image: 'assets/xemtatca.jpg', name: 'Xem tất cả'),
    Product(image: 'assets/nhomtieuhoa.png', name: 'TPCN Nhóm tiêu hóa'),
    Product(image: 'assets/nhomtimmach.png', name: 'TPCN Nhóm tim mạch'),
    Product(image: 'assets/nhomduonghuyet.png', name: 'TPCN Nhóm đường huyết'),
    Product(image: 'assets/nhomhohap.png', name: 'TPCN Nhóm hô hấp'),
    Product(image: 'assets/nhomthankinh.png', name: 'TPCN Nhóm thần kinh'),
    Product(
        image: 'assets/nhomcoxuongkhop.png', name: 'TPCN Nhóm cơ xương khớp'),
    Product(image: 'assets/nhomgiamcan.jpg', name: 'TPCN Giảm cân'),
    Product(
        image: 'assets/nhomchamsocsacdep.png', name: 'TPCN Chăm sóc sắc đẹp'),
    Product(image: 'assets/nhomchamsocsuckhoenamnu.jpg',
        name: 'TPCN Chăm sóc sức khỏe nam va nữ '),
    Product(image: 'assets/nhommattaimui.png', name: 'TPCN Nhóm Mắt/Tai/Mũi'),
    Product(image: 'assets/nhomvitamin.png',
        name: 'TPCN Vitamin tổng hợp và khoáng chất'),
    Product(image: 'assets/nhomchamsoctoc.png', name: 'TPCN Chăm sóc tóc'),
    Product(image: 'assets/nhomkhac.png', name: 'TPCN Nhóm khác'),
    Product(image: 'assets/nhomchogan.png', name: 'TPCN Cho gan'),
  ];
  List<Product> list_mevabe = [
    Product(image: 'assets/xemtatca.jpg', name: 'Xem tất cả'),
    Product(image: 'assets/chamsocembe.png', name: 'chăm sóc em bé'),
    Product(image: 'assets/mevabe.png', name: 'TPCN dành cho trẻ em'),
    Product(image: 'assets/sanphamdanhchome.png', name: 'Sản phẩm dành cho mẹ'),
    Product(image: 'assets/danhchophunumangthai.png',
        name: 'TPCN dành cho phụ nữ mang thai')
  ];
  List<Product> list_chamsocsacdep = [
    Product(image: 'assets/xemtatca.jpg', name: 'Xem tất cả'),
    Product(image: 'assets/chamsocsacdep.png', name: 'Chăm sóc mặt'),
    Product(image: 'assets/sanphamchongnang.png', name: 'Sản phẩm chống nắng'),
    Product(image: 'assets/dungculamdep.png', name: 'Dụng cụ làm đẹp')
  ];
  List<Product> list_thietbiyte = [
    Product(image: 'assets/xemtatca.jpg', name: 'Xem tất cả'),
    Product(image: 'assets/thietbiyte.png', name: 'Nhiệt kế'),
    Product(image: 'assets/maydohuyetap.png', name: 'Máy đo huyết áp'),
    Product(image: 'assets/maydoduonghuyet.png', name: 'Máy đo đường huyết'),
    Product(image: 'assets/mayxongkhidung.png', name: 'Máy xông khí dung'),
    Product(image: 'assets/thietbikhac.png', name: 'Thiết bị khác'),
  ];

  @override
  Widget build(BuildContext context) {
    // int _selectedIndex = 1;
    Size size = MediaQuery
        .of(context)
        .size;
    var _pageWidth = MediaQuery.of(context).size.width;
    var _pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .primaryColor,

        toolbarHeight: _pageHeight * 0.1,
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: _pageWidth * 0.82,
              height: _pageHeight * 0.05,
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.search,
                      color: Colors.grey.shade400,
                    ),
                    margin: EdgeInsets.only(left: 10),
                  ),
                  Expanded(
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Tìm trên Pharmacity',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: _pageWidth * 0.08,
              child: IconButton(
                icon: Icon(FontAwesome.basket),
                onPressed: () {
                  Navigator.pushNamed(context, '/shoppingCart');
                },
              ),
            ),
          ],
        ),
      ),
      body: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: size.width * 0.30,
          child: ListView.separated(
              itemCount: list.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox();
              },
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                      _pageController.jumpToPage(index);
                    });
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SpecificTab(
                            image: list[index].image, name: list[index].name),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        color: Theme
                            .of(context)
                            .primaryColor,
                        height: (_selectedIndex == index)
                            ? size.height * 0.17
                            : 0,
                        width: (_selectedIndex == index) ? 2.5 : 0,
                      ),
                    ],
                  ),
                );
              }),
        ),
        Expanded(
          child: Container(
            child: PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                SpecificPage(list: list_pharmacity),
                SpecificPage(list: list_duocpham),
                SpecificPage(list: list_chamsocsuckhoe),
                SpecificPage(list: list_chamsoccanhan),
                SpecificPage(list: list_sanphamtienloi),
                SpecificPage(list: list_thucphamchucnang),
                SpecificPage(list: list_mevabe),
                SpecificPage(list: list_chamsocsacdep),
                SpecificPage(list: list_thietbiyte),
              ],
            ),
          ),
        ),
      ],
    ),// floatingActionButton: IconButton(
    //   icon: Icon(Icons.shopping_cart_outlined),
    //   onPressed: () {},
    //   color: Colors.blue,
    // ),
    );
  }
}

class SpecificPage extends StatelessWidget {
  List<Product> list;

  SpecificPage({required this.list});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return SpecificItem(image: list[index].image, name: list[index].name);
      },
    );
  }
}

class SpecificTab extends StatelessWidget {
  final String image;
  final String name;

  SpecificTab({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      height: size.height * 0.17,
      width: size.width * 0.25,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.10,
              width: size.width * 0.20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$image'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              '$name',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpecificItem extends StatelessWidget {
  final String image;
  final String name;

  SpecificItem({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: size.height * 0.20,
      width: size.width * 0.25,
      child: TextButton(

        onPressed: () {},
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.09,
              width: size.width * 0.20,
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.grey),
                // borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage('$image'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              '$name',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: TextStyle(
                color: Colors.black,
                fontSize: 11.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
