import 'import_file.dart';

class Getpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff93B5C1),
        actions: [IconButton(icon: Icon(Icons.clear), onPressed: null)],
      ),
      backgroundColor: Color(0xff93B5C1),
      body: Container(
        child: Column(children: [
          Container(
            alignment: Alignment(-1, 0),
            margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(50), 0, 0, 0),
            child: Image.asset(
              'asset/LOGO03.png',
              width: ScreenUtil().setWidth(80),
              height: ScreenUtil().setHeight(100),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0),
            margin: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(50), ScreenUtil().setHeight(15), 0, 0),
            child: Text(
              '忘記及變更密碼',
              style: TextStyle(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(20),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CreateTextBox(
            boxalign: Alignment(-1, 0),
            boxhintText: '請輸入信箱',
            boxMargin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(50),
                ScreenUtil().setHeight(20), ScreenUtil().setWidth(50), 0),
            boxhintcolor: Colors.white,
            boxIcon: Icon(
              Icons.mail_outline,
              size: ScreenUtil().setWidth(40),
            ),
            boxradius: 15,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(150), 0, 0),
              child: SizedBox(
                  width: ScreenUtil().setWidth(200),
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
                      '確認',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    ),
                  ))),
        ]),
      ),
    );
  }
}
