import 'package:club_web/import_file.dart';

class PeopleName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
        appBar: AppBar(
            titleSpacing: 0.0,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Color(0xff93B5C1)),
        backgroundColor: Color(0xff93B5C1),
        body: Container(
          padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(40), 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '變更姓名',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  CreateTextBox(
                    width: ScreenUtil().setWidth(150),
                    height: ScreenUtil().setHeight(50),
                    boxhintText: '姓氏',
                    boxMargin: EdgeInsets.fromLTRB(
                        0,
                        ScreenUtil().setHeight(10),
                        ScreenUtil().setWidth(15),
                        0),
                    boxhintcolor: Color(0xFFD1CACA),
                    boxfill: true,
                    boxpadding: EdgeInsets.all(10.0),
                  ),
                  CreateTextBox(
                    width: ScreenUtil().setWidth(150),
                    height: ScreenUtil().setHeight(50),
                    boxhintText: '名子',
                    boxMargin: EdgeInsets.fromLTRB(
                        0,
                        ScreenUtil().setHeight(10),
                        ScreenUtil().setWidth(15),
                        0),
                    boxhintcolor: Color(0xFFD1CACA),
                    boxfill: true,
                    boxpadding: EdgeInsets.all(10.0),
                  ),
                ],
              ),
              Container(
                  margin:
                      EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(300), 0, 0),
                  child: SizedBox(
                      width: ScreenUtil().setWidth(200),
                      height: ScreenUtil().setHeight(35),
                      child: FlatButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(60.0),
                        ),
                        color: Color(0xff547686),
                        onPressed: () {},
                        child: Text(
                          '儲存',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(20),
                          ),
                        ),
                      ))),
            ],
          ),
        ));
  }
}
