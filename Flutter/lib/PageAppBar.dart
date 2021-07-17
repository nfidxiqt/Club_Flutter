import 'import_file.dart';

class PageAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        titleSpacing: 0.0,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            Container(
                width: ScreenUtil().setWidth(75),
                alignment: Alignment(0, 0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return Organizationorgan();
                    }), (route) => route == null);
                  },
                  child: Text(
                    '組織',
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
                  fontSize: ScreenUtil().setSp(20),
                ),
              ),
            ),
            Container(
                width: ScreenUtil().setWidth(75),
                alignment: Alignment(0, 0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return FinanceHomePage();
                    }), (route) => route == null);
                  },
                  child: Text(
                    '總務',
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
                  fontSize: ScreenUtil().setSp(20),
                ),
              ),
            ),
            Container(
                width: ScreenUtil().setWidth(75),
                alignment: Alignment(0, 0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return Signup();
                    }), (route) => route == null);
                  },
                  child: Text(
                    '活動',
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
                  fontSize: ScreenUtil().setSp(20),
                ),
              ),
            ),
            Container(
                width: ScreenUtil().setWidth(90),
                alignment: Alignment(0, 0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return Signup();
                    }), (route) => route == null);
                  },
                  child: Text(
                    '行事曆',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(18),
                    ),
                  ),
                )),
          ],
        ),
        backgroundColor: Color(0xff93B5C1));
  }
}
