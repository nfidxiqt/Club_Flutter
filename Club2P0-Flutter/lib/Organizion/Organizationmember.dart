import 'package:club_web/import_file.dart';

class Organizationmember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> list = [
      '歐陽良至',
      '王憲祥',
      '張恩睿',
      '呂定豐',
      '沈峻毅',
      '李金鉞',
      '李安笙',
      '吳祐禎',
      '葉俊廷',
      '陳建嘉'
    ];
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
      appBar: PageAppbar(),
      backgroundColor: Color(0xff93B5C1),
      body: Column(children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20),
              ScreenUtil().setHeight(10), 0, ScreenUtil().setHeight(10)),
          child: Text(
            '資訊工程系學會',
            style: TextStyle(
                color: Color(0xff68777C), fontSize: ScreenUtil().setSp(18)),
          ),
        ),
        Container(
            height: ScreenUtil().setHeight(450),
            width: ScreenUtil().setWidth(400),
            decoration: BoxDecoration(
              color: Color(0xFFA9CAD6),
              borderRadius: BorderRadius.all(Radius.circular(
                      15.0) //                 <--- border radius here
                  ),
            ),
            margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), 0,
                ScreenUtil().setWidth(10), ScreenUtil().setHeight(10)),
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(20), 0, 0),
                  alignment: Alignment.center,
                  child: Text(
                    '資訊工程系學會',
                    style: TextStyle(
                        color: Color(0xff68777C),
                        fontSize: ScreenUtil().setSp(18)),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(Icons.add),
                  ),
                ),
                Divider(
                  height: 10.0,
                  indent: 0.0,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(15),
                      ScreenUtil().setHeight(5), 0, ScreenUtil().setHeight(5)),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '管理者：',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff68777C),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(ScreenUtil().setWidth(5), 0, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      OrganizationName(name: '王詣承'),
                    ],
                  ),
                ),
                Divider(
                  height: 10.0,
                  indent: 0.0,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(15),
                      ScreenUtil().setHeight(5), 0, ScreenUtil().setHeight(5)),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '成員：',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff68777C),
                    ),
                  ),
                ),
                Container(
                    margin:
                        EdgeInsets.fromLTRB(ScreenUtil().setWidth(5), 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      children: [
                        for (var i in list)
                          OrganizationName(name: i.toString()),
                      ],
                    ))
              ]),
            )),
        Organizionbottombar()
      ]),
      drawer: PageDrawer(),
    );
  }
}
