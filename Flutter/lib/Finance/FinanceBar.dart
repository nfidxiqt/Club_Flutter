import 'package:club_web/import_file.dart';

class FinanceBar extends CustomPainter {
  final double unusedValue;
  final double usedValue;
  final double barsize;
  const FinanceBar({Key key, this.unusedValue, this.usedValue, this.barsize});

  @override
  void paint(Canvas canvas, Size size) {
    var paints = Paint();

    paints.color = Colors.red;
    canvas.drawRect(Offset(0, 0) & Size(usedValue, barsize), paints);

    paints.color = Colors.blue;
    canvas.drawRect(Offset(usedValue, 0) & Size(unusedValue, barsize), paints);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
