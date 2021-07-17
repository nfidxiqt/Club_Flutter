import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckboxtText extends StatefulWidget {
  final String text;
  final EdgeInsets textMargin;
  final EdgeInsets checkMargin;
  const CheckboxtText({
    Key key,
    this.text,
    this.textMargin,
    this.checkMargin,
  }) : super(key: key);

  @override
  CheckboxtTextCreate createState() => CheckboxtTextCreate();
}

class CheckboxtTextCreate extends State<CheckboxtText> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Row(
      children: [
        Container(
          margin: widget.checkMargin,
          child: SizedBox(
            width: ScreenUtil().setWidth(25),
            height: ScreenUtil().setHeight(40),
            child: Checkbox(
              value: false,
            ),
          ),
        ),
        Container(
          margin: widget.textMargin,
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff68777C),
            ),
          ),
        )
      ],
    );
  }
}
