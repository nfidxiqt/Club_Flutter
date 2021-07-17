import 'package:club_web/import_file.dart';

class Organizationsetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String o_name = '資訊工程系學會';
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
      appBar: PageAppbar(),
      backgroundColor: Color(
        0xff93B5C1,
      ),
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
            borderRadius: BorderRadius.all(
                Radius.circular(15.0) //                 <--- border radius here
                ),
          ),
          margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), 0,
              ScreenUtil().setWidth(10), ScreenUtil().setHeight(10)),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10),
                    ScreenUtil().setHeight(10), ScreenUtil().setWidth(10), 0),
                child: SizedBox(
                  width: ScreenUtil().setWidth(20),
                  height: ScreenUtil().setHeight(30),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '組織名稱：' + o_name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff68777C),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ],
              ),
              Divider(
                height: 5.0,
                indent: 0.0,
                color: Color(0xff68777C),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '成員權限：',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff68777C),
                    ),
                  ),
                  CheckboxtText(
                    text: '變更組織名稱',
                    textMargin:
                        EdgeInsets.fromLTRB(0, 0, ScreenUtil().setWidth(43), 0),
                  )
                ],
              ),
              CheckboxtText(
                text: '變更組織照片',
                checkMargin:
                    EdgeInsets.fromLTRB(ScreenUtil().setWidth(152), 0, 0, 0),
              ),
              CheckboxtText(
                text: '新增/移除子組織',
                checkMargin:
                    EdgeInsets.fromLTRB(ScreenUtil().setWidth(152), 0, 0, 0),
              ),
              CheckboxtText(
                text: '邀請/踢除成員',
                checkMargin:
                    EdgeInsets.fromLTRB(ScreenUtil().setWidth(152), 0, 0, 0),
              ),
              CheckboxtText(
                text: '新增/移除代辦事項',
                checkMargin:
                    EdgeInsets.fromLTRB(ScreenUtil().setWidth(152), 0, 0, 0),
              ),
              CheckboxtText(
                text: '變更成員權限',
                checkMargin:
                    EdgeInsets.fromLTRB(ScreenUtil().setWidth(152), 0, 0, 0),
              )
            ],
          ),
        ),
        Organizionbottombar()
      ]),
      drawer: PageDrawer(),
    );
  }
}
