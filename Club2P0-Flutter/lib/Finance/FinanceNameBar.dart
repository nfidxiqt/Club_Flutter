import 'package:club_web/import_file.dart';

class FinanceNameBar extends CustomPainter {
  final String name;
  final double barValue;
  final double barsize;
  final Color barColor;
  const FinanceNameBar(
      {Key key,
      this.barColor = Colors.black,
      this.name,
      this.barValue,
      this.barsize});

  void paint(Canvas canvas, Size size) {
    var paints = Paint();

    paints.color = barColor;
    canvas.drawRect(Offset(0, 2) & Size(barValue, barsize), paints);

    var textpainter = TextPainter(
        text: TextSpan(
            text: name, style: TextStyle(color: Colors.white, fontSize: 15)),
        textDirection: TextDirection.ltr);
    textpainter.layout();
    textpainter.paint(canvas, Offset(barValue * 1.5, 0));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
