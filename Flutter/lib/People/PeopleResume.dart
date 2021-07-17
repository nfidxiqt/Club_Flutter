import 'package:club_web/import_file.dart';

class PeopleResume extends StatelessWidget {
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
        child: Container(
          height: ScreenUtil().setHeight(350),
          width: ScreenUtil().setWidth(480),
          padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(30),
              ScreenUtil().setHeight(0), ScreenUtil().setWidth(30), 0),
          margin: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(15), 0, ScreenUtil().setWidth(15), 0),
          decoration: BoxDecoration(
            color: Color(0xFFA9CAD6),
            borderRadius: BorderRadius.all(
                Radius.circular(15.0) //                 <--- border radius here
                ),
          ),
          child: TextField(
            maxLines: 10,
            style: TextStyle(
              fontSize: 25,
              color: Color(0xff68777C),
            ),
          ),
        ),
      ),
    );
  }
}
