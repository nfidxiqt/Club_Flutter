import 'package:club_web/import_file.dart';

class Organizationorgan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> list = ['行政部門', '活動部門', '總務部門'];
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    '資訊工程系學會',
                    style: TextStyle(
                        color: Color(0xff68777C),
                        fontSize: ScreenUtil().setSp(18)),
                  ),
                ),
                for (var i in list)
                  CreateButton(
                    height: ScreenUtil().setHeight(45),
                    width: ScreenUtil().setHeight(300),
                    boxradius: 10.0,
                    buttonColor: Colors.white,
                    textcolor: Colors.black,
                    buttonText: i.toString(),
                  ),
                Container(
                  height: ScreenUtil().setHeight(45),
                  width: ScreenUtil().setHeight(300),
                  margin: EdgeInsets.fromLTRB(
                      ScreenUtil().setWidth(20),
                      ScreenUtil().setHeight(25),
                      ScreenUtil().setWidth(20),
                      ScreenUtil().setHeight(25)),
                  child: FlatButton(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.white,
                    onPressed: () => print('555'),
                    child: Icon(
                      Icons.add,
                      size: ScreenUtil().setWidth(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Organizionbottombar()
      ]),
      drawer: PageDrawer(),
    );
  }
}
