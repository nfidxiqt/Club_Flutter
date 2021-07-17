import 'package:club_web/import_file.dart';

class PeopleInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PeopleInformationCreate();
  }
}

var _imagePath =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUPQFr6TrK_A4xYG9CB_3jviav3ILjAAN74Q&usqp=CAU';
var _image = NetworkImage(_imagePath);

class PeopleInformationCreate extends State<PeopleInformation> {
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
          alignment: Alignment.center,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => PeoplePhoto()),
                  );
                },
                child: Container(
                  height: ScreenUtil().setHeight(80),
                  width: ScreenUtil().setWidth(80),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: _image, fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                height: ScreenUtil().setHeight(480),
                width: ScreenUtil().setHeight(480),
                padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(30),
                    ScreenUtil().setHeight(20), 0, 0),
                margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(15),
                    ScreenUtil().setHeight(15), ScreenUtil().setWidth(15), 0),
                decoration: BoxDecoration(
                  color: Color(0xFFA9CAD6),
                  borderRadius: BorderRadius.all(Radius.circular(
                          15.0) //                 <--- border radius here
                      ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '姓　　名：',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff68777C),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => PeopleName()),
                            );
                          },
                          child: Text(
                            '歐陽良至',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff68777C),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '信　　箱：   1106108108@nk...',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff68777C),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '生　　日：',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff68777C),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => PeopleBirthday()),
                            );
                          },
                          child: Text(
                            '87/11/17',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff68777C),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {},
                            child: Text(
                              '個人簡歷：',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff68777C),
                              ),
                            ),
                          ),
                          FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => PeopleResume()),
                                );
                              },
                              child: Column(
                                children: [
                                  Text(
                                    '尚未設定',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff68777C),
                                    ),
                                  ),
                                ],
                              )),
                        ]),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
