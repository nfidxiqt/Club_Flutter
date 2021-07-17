import 'package:club_web/import_file.dart';
import 'dart:math';

class FinanceHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
      appBar: PageAppbar(),
      backgroundColor: Color(0xff93B5C1),
      body: Column(children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20),
              ScreenUtil().setHeight(10), 0, ScreenUtil().setHeight(0)),
          child: Text(
            '資訊工程系學會',
            style: TextStyle(
                color: Color(0xff68777C), fontSize: ScreenUtil().setSp(20)),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20),
              ScreenUtil().setHeight(0), 0, ScreenUtil().setHeight(0)),
          child: Row(
            children: [
              Container(
                  width: ScreenUtil().setWidth(75),
                  alignment: Alignment(0, 0),
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) {
                        return Organizationorgan();
                      }), (route) => route == null);
                    },
                    child: Text(
                      '總金額',
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
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(18),
                  ),
                ),
              ),
              Container(
                  width: ScreenUtil().setWidth(75),
                  alignment: Alignment(0, 0),
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) {
                        return FinanceHomePage();
                      }), (route) => route == null);
                    },
                    child: Text(
                      '總預算',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(18),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Container(
          child: CustomPaint(
            size: Size(300, 200),
            painter: MyPainter1(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFA9CAD6),
            borderRadius: BorderRadius.all(
                Radius.circular(15.0) //                 <--- border radius here
                ),
          ),
          width: ScreenUtil().setWidth(400),
          height: ScreenUtil().setHeight(220),
          margin: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(20),
              ScreenUtil().setHeight(5),
              ScreenUtil().setWidth(20),
              ScreenUtil().setHeight(5)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      ScreenUtil().setWidth(10),
                      ScreenUtil().setHeight(5),
                      ScreenUtil().setWidth(0),
                      ScreenUtil().setHeight(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: CustomPaint(
                          size: Size(80, 30),
                          painter: FinanceNameBar(
                              name: '已使用',
                              barsize: 20,
                              barValue: 20,
                              barColor: Colors.red),
                        ),
                      ),
                      SizedBox(width: ScreenUtil().setWidth(60)),
                      Container(
                        child: CustomPaint(
                          size: Size(80, 30),
                          painter: FinanceNameBar(
                              name: '餘額',
                              barsize: 20,
                              barValue: 20,
                              barColor: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    '行政經費',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  child: CustomPaint(
                    size: Size(300, 20),
                    painter: FinanceBar(
                        usedValue: 220, unusedValue: 80, barsize: 10),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => FinanceItemPage()),
                    );
                  },
                  child: Text(
                    '活動經費',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  child: CustomPaint(
                    size: Size(300, 20),
                    painter: FinanceBar(
                        usedValue: 260, unusedValue: 40, barsize: 10),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    '財產經費',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  child: CustomPaint(
                    size: Size(300, 20),
                    painter: FinanceBar(
                        usedValue: 120, unusedValue: 180, barsize: 10),
                  ),
                ),
              ],
            ),
          ),
        ),
        Financebottombar()
      ]),
      drawer: PageDrawer(),
    );
  }
}

class MyPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var max_ = 6.28;
    var unused = 0.1;
    var used = 0.25;
    var over = 0.65;

    paint.color = Colors.yellow;

    canvas.drawArc(
        Offset(-40, 10) & Size(180, 180), 4.72, unused * max_, true, paint);

    paint.color = Colors.red;
    canvas.drawArc(Offset(-40, 10) & Size(180, 180), 4.72 + unused * max_,
        used * max_, true, paint);

    paint.color = Colors.blue;
    canvas.drawArc(Offset(-40, 10) & Size(180, 180),
        4.72 + (unused + used) * max_, over * max_, true, paint);

    paint.color = Color(0xff93B5C1);
    canvas.drawArc(Offset(-15, 35) & Size(130, 130), 0, 6.29, true, paint);

    var textpainter = TextPainter(
        text: TextSpan(
            text: '總預算',
            style: TextStyle(color: Color(0xff68777C), fontSize: 18)),
        textDirection: TextDirection.ltr);
    textpainter.layout();
    textpainter.paint(canvas, Offset(23, 55));

    var textpainter2 = TextPainter(
        text: TextSpan(
            text: '\$100,000',
            style: TextStyle(color: Colors.black, fontSize: 18)),
        textDirection: TextDirection.ltr);
    textpainter2.layout();
    textpainter2.paint(canvas, Offset(10, 90));

    paint.color = Colors.red;
    canvas.drawRect(Offset(180, 35) & Size(25, 25), paint);

    paint.color = Colors.blue;
    canvas.drawRect(Offset(180, 90) & Size(25, 25), paint);

    paint.color = Colors.yellow;
    canvas.drawRect(Offset(180, 145) & Size(25, 25), paint);

    var textpainter3 = TextPainter(
        text: TextSpan(
            text: '已使用', style: TextStyle(color: Colors.white, fontSize: 20)),
        textDirection: TextDirection.ltr);
    textpainter3.layout();
    textpainter3.paint(canvas, Offset(220, 32));

    var textpainter4 = TextPainter(
        text: TextSpan(
            text: '餘額', style: TextStyle(color: Colors.white, fontSize: 20)),
        textDirection: TextDirection.ltr);
    textpainter4.layout();
    textpainter4.paint(canvas, Offset(220, 86));

    var textpainter5 = TextPainter(
        text: TextSpan(
            text: '尚未使用', style: TextStyle(color: Colors.white, fontSize: 20)),
        textDirection: TextDirection.ltr);
    textpainter5.layout();
    textpainter5.paint(canvas, Offset(220, 142));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
