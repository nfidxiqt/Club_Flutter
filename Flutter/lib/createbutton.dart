import 'import_file.dart';

class CreateButton extends StatefulWidget {
  final String buttonText;
  final Color buttonColor;
  final String webUrl;
  final double width;
  final double height;
  final double boxradius;
  final Color textcolor;
  const CreateButton(
      {Key key,
      this.buttonText = '',
      this.buttonColor,
      this.webUrl = '1',
      this.boxradius = 50,
      this.width,
      this.textcolor = Colors.white,
      this.height})
      : super(key: key);
  @override
  Organizationbutton createState() => Organizationbutton();
}

class Organizationbutton extends State<CreateButton> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    List<Widget> items = [
      Container(
        height: widget.height,
        width: widget.width,
        margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(20),
            ScreenUtil().setHeight(25), ScreenUtil().setWidth(20), 0),
        child: FlatButton(
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.boxradius)),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          color: widget.buttonColor,
          onPressed: () {
            if (widget.webUrl == '1') {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Pagehome()));
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OrganizationHomePage()));
            }
          },
          child: Text(widget.buttonText,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(20),
                color: widget.textcolor,
              )),
        ),
      )
    ];
    return Column(children: items);
  }
}
