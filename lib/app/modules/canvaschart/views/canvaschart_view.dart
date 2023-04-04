import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/canvaschart_controller.dart';

class CanvaschartView extends GetView<CanvaschartController> {
  CanvaschartView({Key? key}) : super(key: key);

  CanvaschartController controller = Get.find<CanvaschartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CanvaschartView'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.red,
          child: SizedBox(
            height: 150,
            child: ProgressChart(scores: controller.scores),
          ),
        ));
  }
}

class ProgressChart extends StatefulWidget {
  final List<Score> scores;
  ProgressChart({Key? key, required this.scores}) : super(key: key);

  @override
  State<ProgressChart> createState() => _ProgressChartState();
}

const WeekDays = ["", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

class _ProgressChartState extends State<ProgressChart> {
  late double _min, _max;
  late List<double> _Y;
  late List<String> _X;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var min = double.maxFinite;
    var max = -double.maxFinite;

    widget.scores.forEach((p) {
      min = min > p.value ? p.value : min;
      max = max < p.value ? p.value : max;
    });

    setState(() {
      _min = min;
      _max = max;
      _Y = widget.scores.map((p) => p.value).toList();
      _X = widget.scores
          .map((p) => "${WeekDays[p.time.weekday]}\n${p.time.day}")
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        child: Container(),
        painter: ChartPainter(_X, _Y, _min, _max),
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  final List<String> x;
  final List<double> y;
  final double min, max;
  ChartPainter(this.x, this.y, this.min, this.max);
  final backgroundColor = Colors.black;
  final labelStyle = TextStyle(color: Colors.white38, fontSize: 14);
  final ylabelStyle = TextStyle(color: Colors.white38, fontSize: 14);
  final xLabelStyle= TextStyle(
      color: Colors.white38, fontSize: 16, fontWeight: FontWeight.bold);

  final linePaint = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.0;

  final dotPaintFill = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.0;

  static double border = 10;
  static double radius = 5;
  @override
  void paint(Canvas canvas, Size size) {
    final clipRect = Rect.fromLTWH(0, 0, size.width, size.height);
    final clipRect1 = Rect.fromCircle(center: Offset(12, 23), radius: 23);
    canvas.clipRect(clipRect);
    canvas.drawPaint(Paint()..color = Colors.black);
    // compute the draw chart width and height
    final drawableHeight = size.height - 2.0 * border;
    final drawableWidth = size.width - 2.0 * border;
    final hd = drawableHeight / 5.0;
    final wd = drawableWidth / this.x.length.toDouble();
    final height = hd * 3.0;
    final width = drawableWidth;
    // escape if values are invalid
    if (height <= 0.0 || width <= 0.0) return;
    if (max - min < 1.0e-6) return;
    final hr = height / (max - min); // height per unit value
    final left = border;
    final top = border;
    final c = Offset(left + wd / 2.0, top + height / 2.0);
    _drawOutline(canvas, c, wd, height);

    final points = _computePoints(c, wd, height, hr);
    final path = _computePath(points);
    final labels = _computeLabels();

    canvas.drawPath(path, linePaint);
    _drawDataPoints(canvas, points, dotPaintFill);
    _drawLabels(canvas, labels, points, wd, top);
    // draw x labels
    final c1 = Offset(c.dx, top + 4.5 * hd);
    _drawXLabels (canvas, c1, wd);
  }

  void _drawLabels(Canvas canvas, List<String> labels, List<Offset> points,
      double wd, double top) {
    var i = 0;
    labels.forEach((label) {
      final dp = points[i];
      final dy = (dp.dy - 15.0) < top ? 15.0 : -15.0;
      final ly = dp + Offset(0, dy);
      drawTextCentered(canvas, ly, label, labelStyle, wd);
      i++;
    });
  }

  void _drawXLabels (Canvas canvas, Offset c, double wd) {
    x.forEach((xp) {
      drawTextCentered (canvas, c, xp, xLabelStyle, wd);
      c += Offset(wd, 0);
    });
  }

  void _drawDataPoints(Canvas canvas, List<Offset> points, Paint dotPaintFill) {
    points.forEach((dp) {
      canvas.drawCircle(dp, radius, dotPaintFill);
      canvas.drawCircle(dp, radius, linePaint);
    });
  }

  Path _computePath(List<Offset> points) {
    final path = Path();
    for (var i = 0; i < points.length; i++) {
      final p = points[i];
      if (i == 0) {
        path.moveTo(p.dx, p.dy);
      } else {
        path.lineTo(p.dx, p.dy);
      }
    }
    return path;
  }

  List<Offset> _computePoints(
      Offset c, double width, double height, double hr) {
    List<Offset> points = [];
    y.forEach((yp) {
      final yy = height - (yp - min) * hr;
      final dp = Offset(c.dx, c.dy - height / 2.0 + yy);
      points.add(dp);
      c += Offset(width, 0);
    });
    return points;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  final Paint outlinePaint = Paint()
    ..strokeWidth = 1.0
    ..style = PaintingStyle.stroke
    ..color = Colors.white;
  void _drawOutline(Canvas canvas, Offset c, double width, double height) {
    y.forEach((p) {
      final rect = Rect.fromCenter(center: c, width: width, height: height);
      canvas.drawRect(rect, outlinePaint);
      c += Offset(width, 0);
    });
  }

  List<String> _computeLabels() {
    return y.map((yp) => yp.toStringAsFixed(1)).toList();
  }

  TextPainter measureText(
      String s, TextStyle style, double maxWidth, TextAlign align) {
    final span = TextSpan(text: s, style: style);
    final tp = TextPainter(
        text: span, textAlign: align, textDirection: TextDirection.ltr);
    tp.layout(minWidth: 0, maxWidth: maxWidth);
    return tp;
  }

  Size drawTextCentered(
      Canvas canvas, Offset c, String text, TextStyle style, double maxWidth) {
    final tp = measureText(text, style, maxWidth, TextAlign.center);
    final offset = c + Offset(-tp.width / 2.0, -tp.height / 2.0);
    tp.paint(canvas, offset);
    return tp.size;
  }
}

class Score {
  late double value;
  late DateTime time;
  Score(this.value, this.time);
}
