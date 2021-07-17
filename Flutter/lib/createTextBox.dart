import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateTextBox extends StatefulWidget {
  final String boxhintText;
  final EdgeInsets boxMargin;
  final Color boxFillcolor;
  final Color boxhintcolor;
  final double width;
  final double height;
  final Icon boxIcon;
  final bool boxfill;
  final EdgeInsets boxpadding;
  final double boxradius;
  final Alignment boxalign;
  final bool boxobscure;
  const CreateTextBox(
      {Key key,
      this.boxhintText = '',
      this.boxMargin,
      this.boxFillcolor = Colors.white,
      this.boxhintcolor = Colors.black,
      this.width,
      this.height,
      this.boxIcon,
      this.boxfill = false,
      this.boxradius = 10,
      this.boxpadding,
      this.boxobscure = false,
      this.boxalign})
      : super(key: key);
  @override
  InputTextBox createState() => InputTextBox();
}

class InputTextBox extends State<CreateTextBox> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      Container(
        alignment: widget.boxalign,
        height: widget.height,
        width: widget.width,
        margin: widget.boxMargin,
        child: TextField(
          obscureText: widget.boxobscure,
          onSubmitted: (text) {
            print('onSubmitted');
          },
          decoration: InputDecoration(
            fillColor: widget.boxFillcolor,
            filled: widget.boxfill,
            contentPadding: widget.boxpadding,
            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.boxradius))),
            hintText: (widget.boxhintText),
            hintStyle: TextStyle(
                color: widget.boxhintcolor, fontSize: ScreenUtil().setSp(15)),
            prefixIcon: widget.boxIcon,
          ),
        ),
      ),
    ];
    return Column(children: items);
  }
}
