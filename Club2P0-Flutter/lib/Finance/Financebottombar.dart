import 'package:club_web/import_file.dart';

class Financebottombar extends StatefulWidget {
  const Financebottombar({
    Key key,
  }) : super(key: key);

  @override
  FinancebottombarCreate createState() => FinancebottombarCreate();
}

class FinancebottombarCreate extends State<Financebottombar> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.table_view_rounded),
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
              icon: Icon(Icons.drive_file_rename_outline),
              iconSize: 42,
              color: Colors.black54,
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return FinanceFunding();
                }), (route) => route == null);
              },
            ),
            IconButton(
              icon: Icon(Icons.attach_money_outlined),
              iconSize: 42,
              color: Colors.black54,
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return FinanceProperty(
                    imagpath:
                        'https://media.decathlon.tw/media/catalog/product/cache/12/image/600x600/9df78eab33525d08d6e5fb8d27136e95/d/1/d12aa3e5-4cb7-408c-997e-e80c6c3fffbf_8504910.jpg',
                  );
                }), (route) => route == null);
              },
            ),
            IconButton(
              icon: Icon(Icons.list_alt_outlined),
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
              '經費規劃',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(width: ScreenUtil().setWidth(25)),
            Text(
              '經費申請',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(width: ScreenUtil().setWidth(40)),
            Text(
              '財產',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(width: ScreenUtil().setWidth(35)),
            Text(
              '出借清單',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(width: ScreenUtil().setWidth(5)),
          ],
        )
      ],
    );
  }
}
