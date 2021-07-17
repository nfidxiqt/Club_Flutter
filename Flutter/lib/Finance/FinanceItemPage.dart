import 'package:club_web/import_file.dart';

class FinanceItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
      appBar: PageAppbar(),
      backgroundColor: Color(0xff93B5C1),
      body: Column(
        children: [
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
                  child: Column(children: [
                FinanceCreateItem(
                  itemText: '達人秀',
                  allValue: 1000,
                  unusedValue: 100,
                  usedValue: 900,
                ),
                FinanceCreateItem(
                  itemText: 'CLUB 2.0 尾牙',
                  allValue: 20000,
                  unusedValue: 5000,
                  usedValue: 15000,
                ),
              ]))),
          Financebottombar()
        ],
      ),
      drawer: PageDrawer(),
    );
  }
}
