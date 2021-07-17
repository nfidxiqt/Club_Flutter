import 'package:club_web/import_file.dart';

class PeopleBirthday extends StatefulWidget {
  State createState() => new CreatePeopleBirthday();
}

class CreatePeopleBirthday extends State<PeopleBirthday> {
  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950, 1),
        lastDate: DateTime(2022));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              '變更生日',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  "${selectedDate.toLocal()}".split(' ')[0],
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: ScreenUtil().setSp(25),
                  ),
                ),
                IconButton(
                  onPressed: () => _selectDate(context),
                  icon: Icon(
                    Icons.date_range,
                    size: 30,
                  ),
                )
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
          ]),
        ));
  }
}
