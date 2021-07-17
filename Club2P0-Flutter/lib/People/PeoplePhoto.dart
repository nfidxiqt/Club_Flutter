import 'package:club_web/import_file.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PeoplePhoto extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PeoplePhotoCreate();
  }
}

var _imagePath =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUPQFr6TrK_A4xYG9CB_3jviav3ILjAAN74Q&usqp=CAU';
var _image = NetworkImage(_imagePath);

class PeoplePhotoCreate extends State<PeoplePhoto> {
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
          child: Column(children: [
            GestureDetector(
              onTap: () {},
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
              width: ScreenUtil().setWidth(170),
              height: ScreenUtil().setHeight(45),
              margin: EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(20), 0, 0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color(0xFFA9CAD6),
                onPressed: () {},
                child: Text(
                  '相機',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff68777C),
                  ),
                ),
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(170),
              height: ScreenUtil().setHeight(45),
              margin: EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(20), 0, 0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color(0xFFA9CAD6),
                onPressed: () {},
                child: Text(
                  '選擇相片',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff68777C),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
