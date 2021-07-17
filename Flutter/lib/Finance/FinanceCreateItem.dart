import 'package:club_web/import_file.dart';

class FinanceCreateItem extends StatefulWidget {
  final String itemText;
  final double usedValue;
  final double unusedValue;
  final double allValue;
  const FinanceCreateItem(
      {Key key, this.itemText, this.usedValue, this.unusedValue, this.allValue})
      : super(key: key);
  @override
  CreateItem createState() => CreateItem();
}

class CreateItem extends State<FinanceCreateItem> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    List<Widget> items = [
      Container(
          margin: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(0),
              ScreenUtil().setHeight(7),
              ScreenUtil().setWidth(0),
              ScreenUtil().setHeight(7)),
          child: Text(
            widget.itemText,
            style: TextStyle(fontSize: 18, color: Colors.black),
          )),
      Divider(
        height: 10.0,
        indent: 0.0,
        color: Color(0xff7395A1),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(
            ScreenUtil().setWidth(0),
            ScreenUtil().setHeight(10),
            ScreenUtil().setWidth(0),
            ScreenUtil().setHeight(10)),
        child: Row(
          children: [
            CustomPaint(
              size: Size(200, 140),
              painter: FinanceDraw(
                  usedValue: widget.usedValue,
                  unusedValue: widget.unusedValue,
                  allValue: widget.allValue),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: ScreenUtil().setWidth(120),
                    ),
                    SizedBox(
                        width: ScreenUtil().setWidth(30),
                        height: ScreenUtil().setHeight(30),
                        child: IconButton(
                          color: Colors.white,
                          iconSize: 18,
                          padding: EdgeInsets.all(0),
                          alignment: Alignment.topRight,
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => FinanceItemDetailPage(
                                        itemText: widget.itemText,
                                      )),
                            );
                          },
                        ))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(0),
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(5)),
                      child: Text(
                        '總預算：',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(0),
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(5)),
                      child: Text(
                        widget.allValue.toString() + '元',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(5),
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(5)),
                      child: Text('已使用：',
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(0),
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(5)),
                      child: Text(
                        widget.usedValue.toString() + '元',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(5),
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(5)),
                      child: Text('尚　餘：',
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(0),
                          ScreenUtil().setWidth(0),
                          ScreenUtil().setHeight(5)),
                      child: Text(
                        widget.unusedValue.toString() + '元',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      Divider(
        height: 10.0,
        indent: 0.0,
        color: Colors.black,
      ),
    ];
    return Column(children: items);
  }
}
