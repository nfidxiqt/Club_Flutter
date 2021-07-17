import 'package:club_web/import_file.dart';

class Organizionbottombar extends StatefulWidget {
  const Organizionbottombar({
    Key key,
  }) : super(key: key);

  @override
  OrganizionbottombarCreate createState() => OrganizionbottombarCreate();
}

class OrganizionbottombarCreate extends State<Organizionbottombar> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.person),
              iconSize: 42,
              color: Colors.black54,
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return Organizationmember();
                }), (route) => route == null);
              },
            ),
            IconButton(
              icon: Icon(Icons.date_range),
              iconSize: 42,
              color: Colors.black54,
            ),
            IconButton(
              icon: Icon(Icons.settings),
              iconSize: 42,
              color: Colors.black54,
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return Organizationsetting();
                }), (route) => route == null);
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '成員',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(width: ScreenUtil().setWidth(65)),
            Text(
              '待辦事項',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(width: ScreenUtil().setWidth(65)),
            Text(
              '設定',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        )
      ],
    );
  }
}
