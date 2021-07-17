import 'import_file.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
        backgroundColor: Color(0xFFA9CAD6),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      ScreenUtil().setWidth(30),
                      ScreenUtil().setHeight(40),
                      0,
                      ScreenUtil().setHeight(10)),
                  alignment: Alignment(0, 0),
                  child: Image.asset(
                    'asset/LOGO03.png',
                    width: ScreenUtil().setWidth(80),
                    height: ScreenUtil().setHeight(100),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(30), 0,
                      ScreenUtil().setWidth(10), 0),
                  child: Text(
                    '請填寫基本資料',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CreateTextBox(
                  width: ScreenUtil().setWidth(175),
                  height: ScreenUtil().setHeight(50),
                  boxhintText: '姓氏',
                  boxMargin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10),
                      ScreenUtil().setHeight(20), ScreenUtil().setWidth(10), 0),
                  boxhintcolor: Color(0xFFD1CACA),
                  boxfill: true,
                  boxpadding: EdgeInsets.all(10.0),
                ),
                CreateTextBox(
                  width: ScreenUtil().setWidth(175),
                  height: ScreenUtil().setHeight(50),
                  boxhintText: '名子',
                  boxMargin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10),
                      ScreenUtil().setHeight(20), 0, 0),
                  boxhintcolor: Color(0xFFD1CACA),
                  boxfill: true,
                  boxpadding: EdgeInsets.all(10.0),
                ),
              ],
            ), //姓氏

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CreateTextBox(
                  width: ScreenUtil().setWidth(100),
                  height: ScreenUtil().setHeight(50),
                  boxhintText: '年',
                  boxMargin: EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(10),
                      ScreenUtil().setWidth(15), 0),
                  boxhintcolor: Color(0xFFD1CACA),
                  boxfill: true,
                  boxpadding: EdgeInsets.all(10.0),
                ),
                CreateTextBox(
                  width: ScreenUtil().setWidth(100),
                  height: ScreenUtil().setHeight(50),
                  boxhintText: '月',
                  boxMargin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10),
                      ScreenUtil().setHeight(10), ScreenUtil().setWidth(15), 0),
                  boxhintcolor: Color(0xFFD1CACA),
                  boxfill: true,
                  boxpadding: EdgeInsets.all(10.0),
                ),
                CreateTextBox(
                  width: ScreenUtil().setWidth(100),
                  height: ScreenUtil().setHeight(50),
                  boxhintText: '日',
                  boxMargin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10),
                      ScreenUtil().setHeight(10), ScreenUtil().setWidth(10), 0),
                  boxhintcolor: Color(0xFFD1CACA),
                  boxfill: true,
                  boxpadding: EdgeInsets.all(10.0),
                ),
              ],
            ), //出生日期
            CreateTextBox(
              width: ScreenUtil().setWidth(300),
              height: ScreenUtil().setHeight(50),
              boxhintText: '使用者信箱',
              boxMargin: EdgeInsets.fromLTRB(
                  0, ScreenUtil().setHeight(10), ScreenUtil().setWidth(60), 0),
              boxhintcolor: Color(0xFFD1CACA),
              boxfill: true,
              boxpadding: EdgeInsets.all(10.0),
            ),
            //電子信箱
            CreateTextBox(
              width: ScreenUtil().setWidth(300),
              height: ScreenUtil().setHeight(50),
              boxhintText: '密碼',
              boxMargin: EdgeInsets.fromLTRB(
                  0, ScreenUtil().setHeight(10), ScreenUtil().setWidth(60), 0),
              boxhintcolor: Color(0xFFD1CACA),
              boxfill: true,
              boxobscure: true,
              boxpadding: EdgeInsets.all(10.0),
            ),
            //密碼
            CreateTextBox(
              width: ScreenUtil().setWidth(300),
              height: ScreenUtil().setHeight(50),
              boxhintText: '確認密碼',
              boxMargin: EdgeInsets.fromLTRB(
                  0, ScreenUtil().setHeight(10), ScreenUtil().setWidth(60), 0),
              boxhintcolor: Color(0xFFD1CACA),
              boxfill: true,
              boxpadding: EdgeInsets.all(10.0),
              boxobscure: true,
            ),

            Container(
                margin:
                    EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(90), 0, 0),
                child: SizedBox(
                    width: ScreenUtil().setWidth(250),
                    height: ScreenUtil().setHeight(35),
                    child: FlatButton(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      color: Color(0xff547686),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (context) {
                          return Login();
                        }), (route) => route == null);
                      },
                      child: Text(
                        '繼續',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(20),
                        ),
                      ),
                    ))), //確認密碼
          ],
        ));
  }
}
