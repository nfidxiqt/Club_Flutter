import 'import_file.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff93B5C1),
      ),
      backgroundColor: Color(0xff93B5C1),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment(0, 0),
              child: Image.asset(
                'asset/LOGO03.png',
                width: ScreenUtil().setWidth(80),
                height: ScreenUtil().setHeight(100),
              ),
            ),
            CreateTextBox(
              boxhintText: '帳號',
              boxMargin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(50),
                  ScreenUtil().setHeight(40), ScreenUtil().setWidth(50), 0),
              boxhintcolor: Colors.white,
              boxIcon: Icon(
                Icons.person_outlined,
                size: ScreenUtil().setWidth(40),
              ),
              boxradius: 15,
            ),
            CreateTextBox(
              boxhintText: '密碼',
              boxobscure: true,
              boxMargin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(50),
                  ScreenUtil().setHeight(20), ScreenUtil().setWidth(50), 0),
              boxhintcolor: Colors.white,
              boxIcon: Icon(
                Icons.https_outlined,
                size: ScreenUtil().setWidth(40),
              ),
              boxradius: 15,
            ),
            Container(
                margin:
                    EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(30), 0, 0),
                child: SizedBox(
                    width: 310,
                    height: 35,
                    child: FlatButton(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      color: Color(0xff547686),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (context) {
                          return Pagehome();
                        }), (route) => route == null);
                      },
                      child: Text(
                        '登入',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(18),
                        ),
                      ),
                    ))),
            Container(
                alignment: Alignment(0, 0),
                margin:
                    EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(180), 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        alignment: Alignment(0, 0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          },
                          child: Text(
                            '新增帳戶',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(18),
                            ),
                          ),
                        )),
                    Container(
                      alignment: Alignment(0, 0),
                      child: Text(
                        '|',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(20),
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment(0, 0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Getpassword()));
                          },
                          child: Text(
                            '忘記密碼',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(18),
                            ),
                          ),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
