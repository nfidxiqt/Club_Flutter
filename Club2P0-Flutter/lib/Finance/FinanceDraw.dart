import 'package:club_web/import_file.dart';

class FinanceDraw extends CustomPainter {
  final double unusedValue;
  final double usedValue;
  final double allValue;
  const FinanceDraw({Key key, this.unusedValue, this.usedValue, this.allValue});

  void paint(Canvas canvas, Size size) {
    var paints = Paint();
    var max_ = 6.28;
    paints.color = Colors.blue;
    canvas.drawArc(Offset(25, 0) & Size(140, 140), 4.72,
        unusedValue / allValue * max_, true, paints);

    paints.color = Colors.red;
    canvas.drawArc(
        Offset(25, 0) & Size(140, 140),
        4.72 + unusedValue / allValue * max_,
        usedValue / allValue * max_,
        true,
        paints);

    paints.color = Color(0xFFA9CAD6);
    canvas.drawArc(Offset(40, 15) & Size(110, 110), 0, 6.29, true, paints);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
