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
      )
    );
  }
}

class ProgressChart extends StatefulWidget {
  final List<Score> scores;
   ProgressChart({Key? key,required this.scores}) : super(key: key);

  @override
  State<ProgressChart> createState() => _ProgressChartState();
}

const WeekDays = ["","Mon","Tue","Wed","Thu","Fri","Sat","Sun"] ;

class _ProgressChartState extends State<ProgressChart> {
  late double _min,_max;
  late List<double> _Y;
  late List<String> _X;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var min = double.maxFinite;
    var max = - double.maxFinite;

    widget.scores.forEach((p) {
      min = min > p.value ? p.value :min;
      max = max < p.value ? p.value : max;
    });

    setState(() {
      _min = min;
      _max = max;
      _Y = widget.scores.map((p) => p.value).toList();
      _X = widget.scores.map((p) => "${WeekDays[p.time.weekday]}\n${p.time.day}").toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        child: Container(),
        painter: ChartPainter(_X,_Y,_min,_max),
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  final List<String> x;
  final List<double> y;
  final double min,max;
  ChartPainter(this.x,this.y,this.min,this.max);
  @override
  void paint(Canvas canvas, Size size) {
    final clipRect = Rect.fromLTWH(0, 0, size.width, size.height) ;
    canvas.clipRect(clipRect);
    canvas.drawPaint(Paint()..color = Colors.black);
    // compute the draw chart width and height



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
  return true;
  }
}

class Score{
  late double value;
  late DateTime time;
  Score(this.value,this.time);
}

