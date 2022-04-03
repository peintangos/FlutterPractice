import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: DemoApp(),
  ));
}

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(body: Signature());
}

class Signature extends StatefulWidget {
  const Signature({Key? key}) : super(key: key);

  @override
  _Signature createState() => _Signature();
}

class _Signature extends State<Signature> {
  List<Offset?> _points = <Offset>[];

  @override
  Widget build(BuildContext buildContext) {
    return GestureDetector(
      onPanUpdate: (DragUpdateDetails details) {
        setState(() {
          RenderBox? referenceBox = context.findRenderObject() as RenderBox;
          Offset localPosition =
              referenceBox.globalToLocal(details.globalPosition);
          _points = List.from(_points)..add(localPosition);
        });
      },
      onPanEnd: (DragEndDetails details) => _points.add(null),
      child: CustomPaint(
        painter: SignaturePainter(_points),
        size: Size.infinite,
      ),
    );
  }
}

class SignaturePainter extends CustomPainter {
  SignaturePainter(this.points);

  final List<Offset?> points;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 6.0;
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      }
    }
  }

  @override
  bool shouldRepaint(SignaturePainter other) => other.points != points;
}

