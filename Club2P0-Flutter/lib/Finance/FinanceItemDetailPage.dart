import 'package:club_web/import_file.dart';

class FinanceItemDetailPage extends StatefulWidget {
  final String itemText;
  const FinanceItemDetailPage({
    Key key,
    this.itemText,
  }) : super(key: key);
  @override
  CreateItemDetail createState() => CreateItemDetail();
}

class CreateItemDetail extends State<FinanceItemDetailPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
      appBar: PageAppbar(),
      backgroundColor: Color(0xff93B5C1),
      body: Column(children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(10),
              ScreenUtil().setHeight(0),
              ScreenUtil().setWidth(10),
              ScreenUtil().setHeight(0)),
          child: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Text('活動經費', style: TextStyle(fontSize: 22, color: Colors.white)),
        Container(
            decoration: BoxDecoration(
              color: Color(0xFFA9CAD6),
              borderRadius: BorderRadius.all(Radius.circular(
                      15.0) //                 <--- border radius here
                  ),
            ),
            width: ScreenUtil().setWidth(400),
            height: ScreenUtil().setHeight(430),
            margin: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(20),
                ScreenUtil().setHeight(5),
                ScreenUtil().setWidth(20),
                ScreenUtil().setHeight(5)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(7),
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(7)),
                      child: Text(
                        widget.itemText,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )),
                  Divider(
                    height: 5.0,
                    indent: 0.0,
                    color: Color(0xff7395A1),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(2),
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(10)),
                      child: Text(
                        '收入金額',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )),
                  Divider(
                    height: 0.0,
                    indent: 0.0,
                    color: Color(0xff7395A1),
                  ),
                  FinanceItemDetail(
                    itemText: '名稱',
                    money: '收入金額',
                    number: '編號',
                  ),
                  FinanceItemDetail(
                    itemText: '阿麵a贊助',
                    money: '20000',
                    number: '1',
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(36),
                  ),
                  Divider(
                    height: 0.0,
                    indent: 0.0,
                    color: Color(0xff7395A1),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(5),
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(10)),
                      child: Text(
                        '支出金額',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )),
                  Divider(
                    height: 0.0,
                    indent: 0.0,
                    color: Color(0xff7395A1),
                  ),
                  FinanceItemDetail(
                    itemText: '名稱',
                    money: '支出金額',
                    number: '編號',
                  ),
                  FinanceItemDetail(
                    itemText: '辦桌費',
                    money: '5000',
                    number: '1',
                  ),
                  FinanceItemDetail(
                    itemText: '車馬費',
                    money: '2000',
                    number: '2',
                  ),
                  FinanceItemDetail(
                    itemText: '摸彩獎品',
                    money: '8000',
                    number: '3',
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(36),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    height: ScreenUtil().setHeight(34),
                    width: ScreenUtil().setWidth(100),
                    margin: EdgeInsets.fromLTRB(
                        ScreenUtil().setWidth(250),
                        ScreenUtil().setHeight(5),
                        ScreenUtil().setWidth(0),
                        ScreenUtil().setHeight(5)),
                    child: FlatButton(
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      color: Colors.white,
                      onPressed: () {},
                      child: Text(
                        '變更',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    height: 0.0,
                    indent: 0.0,
                    color: Color(0xff7395A1),
                  ),
                  Container(
                      height: ScreenUtil().setHeight(36),
                      child: Row(children: [
                        Container(
                          alignment: Alignment.center,
                          width: ScreenUtil().setWidth(254),
                          margin: EdgeInsets.fromLTRB(
                              ScreenUtil().setWidth(0),
                              ScreenUtil().setHeight(0),
                              ScreenUtil().setWidth(0),
                              ScreenUtil().setHeight(1)),
                          child: Text(
                            '餘額',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        VerticalDivider(color: Color(0xff7395A1)),
                        Container(
                          alignment: Alignment.center,
                          width: ScreenUtil().setWidth(100),
                          margin: EdgeInsets.fromLTRB(
                              ScreenUtil().setWidth(0),
                              ScreenUtil().setHeight(0),
                              ScreenUtil().setWidth(0),
                              ScreenUtil().setHeight(1)),
                          child: Text(
                            '5000',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ])),
                ],
              ),
            )),
        Financebottombar()
      ]),
      drawer: PageDrawer(),
    );
  }
}
