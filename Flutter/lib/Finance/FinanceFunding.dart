import 'package:club_web/import_file.dart';

class FinanceFunding extends StatefulWidget {
  const FinanceFunding({
    Key key,
  }) : super(key: key);
  @override
  FinanceFundingCreate createState() => FinanceFundingCreate();
}

class FinanceFundingCreate extends State<FinanceFunding> {
  @override
  String dropdownValue = '行政部門';
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
      appBar: PageAppbar(),
      backgroundColor: Color(0xff93B5C1),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20),
                ScreenUtil().setHeight(10), 0, ScreenUtil().setHeight(0)),
            child: Text(
              '資訊工程系學會',
              style: TextStyle(
                  color: Color(0xff68777C), fontSize: ScreenUtil().setSp(20)),
            ),
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(0),
                  ScreenUtil().setHeight(10), 0, ScreenUtil().setHeight(10)),
              child: DropdownButton(
                value: dropdownValue,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(20), color: Color(0xff68777C)),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['行政部門', '總務部門', '活動部門']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20),
                ScreenUtil().setHeight(0), 0, ScreenUtil().setHeight(10)),
            child: Text(
              '申請目的：',
              style: TextStyle(
                  color: Color(0xff68777C), fontSize: ScreenUtil().setSp(20)),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(80),
            width: ScreenUtil().setWidth(480),
            padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(30),
                ScreenUtil().setHeight(0), ScreenUtil().setWidth(30), 0),
            margin: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(15), 0, ScreenUtil().setWidth(15), 0),
            decoration: BoxDecoration(
              color: Color(0xFFA9CAD6),
              borderRadius: BorderRadius.all(Radius.circular(
                      15.0) //                 <--- border radius here
                  ),
            ),
            child: TextField(
              maxLines: 2,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff68777C),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20),
                ScreenUtil().setHeight(10), 0, ScreenUtil().setHeight(10)),
            child: Text(
              '申請事項：',
              style: TextStyle(
                  color: Color(0xff68777C), fontSize: ScreenUtil().setSp(20)),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(120),
            width: ScreenUtil().setWidth(480),
            padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(30),
                ScreenUtil().setHeight(0), ScreenUtil().setWidth(30), 0),
            margin: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(15), 0, ScreenUtil().setWidth(15), 0),
            decoration: BoxDecoration(
              color: Color(0xFFA9CAD6),
              borderRadius: BorderRadius.all(Radius.circular(
                      15.0) //                 <--- border radius here
                  ),
            ),
            child: TextField(
              maxLines: 4,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff68777C),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20),
                ScreenUtil().setHeight(10), 0, ScreenUtil().setHeight(0)),
            child: Text(
              '申請金額：',
              style: TextStyle(
                  color: Color(0xff68777C), fontSize: ScreenUtil().setSp(20)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20),
                ScreenUtil().setHeight(10), 0, ScreenUtil().setHeight(5)),
            child: Row(
              children: [
                CreateTextBox(
                  width: ScreenUtil().setWidth(200),
                  boxhintText: '金額',
                  boxhintcolor: Colors.white,
                  boxIcon: Icon(
                    Icons.attach_money_outlined,
                    size: ScreenUtil().setWidth(30),
                  ),
                  boxradius: 10,
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20), 0,
                        ScreenUtil().setWidth(20), 0),
                    child: SizedBox(
                        width: 150,
                        height: 62,
                        child: FlatButton(
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          color: Color(0xff547686),
                          onPressed: () {},
                          child: Text(
                            '確認',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(20),
                            ),
                          ),
                        ))),
              ],
            ),
          ),
          Financebottombar()
        ],
      ),
      drawer: PageDrawer(),
    );
  }
}
