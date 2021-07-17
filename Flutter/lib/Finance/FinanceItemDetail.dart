import 'package:club_web/import_file.dart';

class FinanceItemDetail extends StatefulWidget {
  final String itemText;
  final String money;
  final String number;
  const FinanceItemDetail({
    Key key,
    this.itemText,
    this.money,
    this.number,
  }) : super(key: key);
  @override
  CreateDetail createState() => CreateDetail();
}

class CreateDetail extends State<FinanceItemDetail> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    List<Widget> items = [
      Column(
        children: [
          Container(
            height: ScreenUtil().setHeight(36),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: ScreenUtil().setWidth(58),
                  margin: EdgeInsets.fromLTRB(
                      ScreenUtil().setWidth(0),
                      ScreenUtil().setHeight(0),
                      ScreenUtil().setWidth(0),
                      ScreenUtil().setHeight(1)),
                  child: Text(
                    widget.number,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                VerticalDivider(color: Color(0xff7395A1)),
                Container(
                  alignment: Alignment.center,
                  width: ScreenUtil().setWidth(180),
                  margin: EdgeInsets.fromLTRB(
                      ScreenUtil().setWidth(0),
                      ScreenUtil().setHeight(0),
                      ScreenUtil().setWidth(0),
                      ScreenUtil().setHeight(1)),
                  child: Text(
                    widget.itemText,
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
                    widget.money,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 0.0,
            indent: 0.0,
            color: Color(0xff7395A1),
          ),
        ],
      )
    ];
    return Column(children: items);
  }
}
