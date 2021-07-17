import 'package:club_web/import_file.dart';

class OrganizationName extends StatefulWidget {
  final String name;
  const OrganizationName({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  OrganizationNameCreate createState() => OrganizationNameCreate();
}

class OrganizationNameCreate extends State<OrganizationName> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Container(
      height: ScreenUtil().setHeight(100),
      width: ScreenUtil().setWidth(75),
      margin: EdgeInsets.fromLTRB(
          ScreenUtil().setWidth(10),
          ScreenUtil().setHeight(5),
          ScreenUtil().setWidth(10),
          ScreenUtil().setHeight(5)),
      child: Column(
        children: [
          Container(
            height: ScreenUtil().setHeight(60),
            width: ScreenUtil().setWidth(60),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('asset/people.jpg'), fit: BoxFit.cover),
            ),
          ),
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff68777C),
            ),
          )
        ],
      ),
    );
  }
}
