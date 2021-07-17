import 'package:club_web/import_file.dart';

class FinanceProperty extends StatefulWidget {
  final String imagpath;
  const FinanceProperty({Key key, this.imagpath}) : super(key: key);
  @override
  FinancePropertyCreate createState() => FinancePropertyCreate();
}

class FinancePropertyCreate extends State<FinanceProperty> {
  @override
  Widget build(BuildContext context) {
    var _image = NetworkImage(widget.imagpath);
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
      appBar: PageAppbar(),
      backgroundColor: Color(0xff93B5C1),
      body: Column(children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(
                    ScreenUtil().setWidth(0),
                    ScreenUtil().setHeight(0),
                    ScreenUtil().setWidth(20),
                    ScreenUtil().setHeight(0)),
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(20),
                          ScreenUtil().setHeight(10),
                          ScreenUtil().setWidth(85),
                          ScreenUtil().setHeight(10)),
                      child: Text(
                        '資訊工程系學會',
                        style: TextStyle(
                            color: Color(0xff68777C),
                            fontSize: ScreenUtil().setSp(20)),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.mode_outlined),
                      iconSize: 30,
                      onPressed: () {},
                      tooltip: '新增',
                    ),
                    IconButton(
                      icon: Icon(Icons.playlist_add_check_outlined),
                      iconSize: 30,
                      onPressed: () {},
                      tooltip: '清點',
                    ),
                    IconButton(
                      icon: Icon(Icons.request_page_outlined),
                      iconSize: 30,
                      onPressed: () {},
                      tooltip: '租借',
                    ),
                  ],
                ))
          ],
        ),
        Container(
          width: ScreenUtil().setWidth(480),
          height: ScreenUtil().setHeight(160),
          margin: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(20),
              ScreenUtil().setHeight(10),
              ScreenUtil().setWidth(20),
              ScreenUtil().setHeight(10)),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            image: DecorationImage(image: _image, fit: BoxFit.fitHeight),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(20),
              ScreenUtil().setHeight(0),
              ScreenUtil().setWidth(20),
              ScreenUtil().setHeight(10)),
          height: ScreenUtil().setHeight(260),
          width: ScreenUtil().setWidth(460),
          child: SingleChildScrollView(
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(
                        ScreenUtil().setWidth(0),
                        ScreenUtil().setHeight(0),
                        ScreenUtil().setWidth(20),
                        ScreenUtil().setHeight(0)),
                    child: Column(
                      children: [
                        Container(
                          width: 170,
                          height: 40,
                          alignment: Alignment.center,
                          child: Text(
                            '名稱',
                            style: TextStyle(
                              color: Color(0xff68777C),
                              fontSize: ScreenUtil().setSp(20),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: 170,
                            height: 40,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => FinanceProperty(
                                            imagpath:
                                                'https://media.decathlon.tw/media/catalog/product/cache/12/image/600x600/9df78eab33525d08d6e5fb8d27136e95/d/1/d12aa3e5-4cb7-408c-997e-e80c6c3fffbf_8504910.jpg',
                                          )),
                                );
                              },
                              child: Text(
                                '烤肉架',
                                style: TextStyle(
                                    color: Color(0xff68777C),
                                    fontSize: ScreenUtil().setSp(20)),
                              ),
                            )),
                        SizedBox(
                            width: 170,
                            height: 40,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => FinanceProperty(
                                            imagpath:
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlFUmaqZ1_WFTLoxH0v6-qtU2dAA79iig4rQ&usqp=CAU',
                                          )),
                                );
                              },
                              child: Text(
                                '烤肉夾',
                                style: TextStyle(
                                    color: Color(0xff68777C),
                                    fontSize: ScreenUtil().setSp(20)),
                              ),
                            )),
                        SizedBox(
                            width: 170,
                            height: 40,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => FinanceProperty(
                                            imagpath:
                                                'https://cdn.cybassets.com/media/W1siZiIsIjEwMjUxL3Byb2R1Y3RzLzM3MTJmOTdkNmZhMWE1NDE0MmE1MTY4YzAzOGQ2NGEwMDc0ZTBiNWIxMDhjODYzZjRkZmUwYjRlYmE3N2I2ODAuanBlZyJdLFsicCIsInRodW1iIiwiNjAweDYwMCJdXQ.jpeg?sha=4ad8e6e91fad5811',
                                          )),
                                );
                              },
                              child: Text(
                                '冰桶',
                                style: TextStyle(
                                    color: Color(0xff68777C),
                                    fontSize: ScreenUtil().setSp(20)),
                              ),
                            )),
                        SizedBox(
                            width: 170,
                            height: 40,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => FinanceProperty(
                                            imagpath:
                                                'https://img.shopping.friday.tw/images/product/248/7451722/7451722_3_1.jpg?874419',
                                          )),
                                );
                              },
                              child: Text(
                                '卡式瓦斯爐',
                                style: TextStyle(
                                    color: Color(0xff68777C),
                                    fontSize: ScreenUtil().setSp(20)),
                              ),
                            )),
                      ],
                    )),
                Container(
                    child: Column(children: [
                  Container(
                    width: 65,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      '數量',
                      style: TextStyle(
                        color: Color(0xff68777C),
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    ),
                  ),
                  Container(
                    width: 65,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Color(0xff68777C),
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    ),
                  ),
                  Container(
                    width: 65,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Color(0xff68777C),
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    ),
                  ),
                  Container(
                    width: 65,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Color(0xff68777C),
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    ),
                  ),
                  Container(
                    width: 65,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Color(0xff68777C),
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    ),
                  ),
                ])),
                Container(
                    margin: EdgeInsets.fromLTRB(
                        ScreenUtil().setWidth(30),
                        ScreenUtil().setHeight(0),
                        ScreenUtil().setWidth(0),
                        ScreenUtil().setHeight(0)),
                    child: Column(children: [
                      Container(
                        width: 65,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          '剩餘',
                          style: TextStyle(
                            color: Color(0xff68777C),
                            fontSize: ScreenUtil().setSp(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Color(0xff68777C),
                            fontSize: ScreenUtil().setSp(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          '0',
                          style: TextStyle(
                            color: Color(0xff68777C),
                            fontSize: ScreenUtil().setSp(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Color(0xff68777C),
                            fontSize: ScreenUtil().setSp(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Color(0xff68777C),
                            fontSize: ScreenUtil().setSp(20),
                          ),
                        ),
                      ),
                    ])),
              ],
            ),
          ),
        ),
        Financebottombar()
      ]),
      drawer: PageDrawer(),
    );
  }
}
