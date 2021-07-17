import 'import_file.dart';

class PageDrawer extends StatefulWidget {
  const PageDrawer({
    Key key,
  }) : super(key: key);

  @override
  PageDrawerCreate createState() => PageDrawerCreate();
}

class PageDrawerCreate extends State<PageDrawer> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
            height: ScreenUtil().setHeight(130),
            color: Color(0xff547686),
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(17), ScreenUtil().setHeight(20), 0, 0),
              child: Row(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(70),
                    width: ScreenUtil().setWidth(70),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('asset/people.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(9),
                        ScreenUtil().setHeight(25), 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '歐陽良至',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(25)),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(25),
                          width: ScreenUtil().setWidth(107),
                          child: FlatButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => PeopleInformation()),
                              );
                            },
                            child: Text(
                              '編輯個人資料',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(15),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
        Container(
          height: ScreenUtil().setHeight(500),
          color: Color(0xffA3C5D1),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: ScreenUtil().setHeight(45),
                  margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20),
                      ScreenUtil().setHeight(25), ScreenUtil().setWidth(20), 0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Colors.pink,
                        ),
                      ),
                      hintText: '團隊搜尋',
                      hintStyle: TextStyle(
                        fontSize: ScreenUtil().setSp(15),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: ScreenUtil().setWidth(30),
                      ),
                    ),
                  ),
                ),
                CreateButton(
                  width: ScreenUtil().setWidth(400),
                  height: ScreenUtil().setHeight(45),
                  buttonColor: Color(0xff547686),
                  buttonText: '首頁',
                ),
                CreateButton(
                    width: ScreenUtil().setWidth(400),
                    height: ScreenUtil().setHeight(45),
                    buttonColor: Color(0xff547686),
                    buttonText: '資訊工程系學會',
                    webUrl: '2'),
                Container(
                  height: ScreenUtil().setHeight(45),
                  width: ScreenUtil().setHeight(400),
                  margin: EdgeInsets.fromLTRB(
                      ScreenUtil().setWidth(20),
                      ScreenUtil().setHeight(25),
                      ScreenUtil().setWidth(20),
                      ScreenUtil().setHeight(25)),
                  child: FlatButton(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: Color(0xff547686),
                      ),
                    ),
                    color: Color(0xaaffffff),
                    onPressed: () => print('555'),
                    child: Icon(
                      Icons.add,
                      size: ScreenUtil().setWidth(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(53),
          color: Color(0xff547686),
          child: FlatButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) {
                return Login();
              }), (route) => route == null);
            },
            child: Text(
              '登出',
              style: TextStyle(
                  color: Colors.white, fontSize: ScreenUtil().setSp(18)),
            ),
          ),
        ),
      ],
    ));
  }
}
