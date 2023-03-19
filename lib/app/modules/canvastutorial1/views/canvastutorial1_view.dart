import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/canvastutorial1_controller.dart';

class Canvastutorial1View extends GetView<Canvastutorial1Controller> {
  const Canvastutorial1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Canvastutorial1View'),
        centerTitle: true,
      ),
      body: Center(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width:300 ,
                height: 300,
                color: Colors.white,
                child: CustomPaint(
                  foregroundPainter: LinePainter(),
                ),
              ),
              Divider(),
              Container(
                width:300 ,
                height: 300,
                color: Colors.white,
                child: CustomPaint(
                  foregroundPainter: RectanglePainter(),
                ),
              ),
              Divider(),
              Container(
                width:300 ,
                height: 300,
                color: Colors.white,
                child: CustomPaint(
                  foregroundPainter: RouRectanglePainter(),
                ),
              ),
              Divider(),
              Container(
                width:300 ,
                height: 300,
                color: Colors.white,
                child: CustomPaint(
                  foregroundPainter: CircularPainter(),
                ),
              ),
              Divider(),
              Container(
                width:300 ,
                height: 300,
                color: Colors.white,
                child: CustomPaint(
                  foregroundPainter: ArcPainter(),
                ),
              ),
              Divider(),
              Container(
                width:300 ,
                height: 300,
                color: Colors.white,
                child: CustomPaint(
                  foregroundPainter: TrianglePainter(),
                ),
              ),
              Divider(),
              Container(
                width:300 ,
                height: 300,
                color: Colors.white,
                child: CustomPaint(
                  foregroundPainter: TrianglePainter(),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..strokeWidth = 10 ..color = Colors.red;
    final paint1 = Paint()..strokeWidth = 10;

    canvas.drawLine(Offset(size.width*1 / 6, size.height *1 /2 ),
        Offset(size.width*5 / 6, size.height *1 /2 ), paint);

    canvas.drawLine(Offset(size.width*1 / 6, size.height *1 /3 ),
        Offset(size.width*5 / 6, size.height *1 /3 ), paint1);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
  
}

class RectanglePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
        ..color = Colors.blue
        ..strokeWidth = 10..style = PaintingStyle.stroke;

    final rect = Rect.fromPoints(Offset(size.width*1 / 4, size.height *1 /4 ),
        Offset(size.width*3 / 4, size.height *3 /4 )) ;
    canvas.drawRect(rect, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
class RouRectanglePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
        ..color = Colors.blue
        ..strokeWidth = 10..style = PaintingStyle.stroke;

    final rect = Rect.fromPoints(Offset(size.width*1 / 4, size.height *1 /4 ),
        Offset(size.width*3 / 4, size.height *3 /4 )) ;
    canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(32)), paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
class CircularPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
        ..color = Colors.blue
        ..strokeWidth = 10..style = PaintingStyle.stroke;
    final center  = Offset(size.width / 2, size.height /2) ;

    canvas.drawCircle(center, 20, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}

class ArcPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
        ..color = Colors.blue
        ..strokeWidth = 10..style = PaintingStyle.stroke;
    // final center  = Offset(size.width / 2, size.height /2) ;

    // canvas.drawCircle(center, 20, paint);
    final arc1 = Path();
    arc1.moveTo(size.width *0.2, size.height * 0.2);
    arc1.arcToPoint(
      Offset(size.width * 0.8, size.height * 0.2),
      clockwise: true,
      radius: Radius.circular(250)
    );
    canvas.drawPath(arc1, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
class TrianglePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
        ..color = Colors.blue
        ..strokeWidth = 10..style = PaintingStyle.stroke;
    // final center  = Offset(size.width / 2, size.height /2) ;

    // canvas.drawCircle(center, 20, paint);
    final path = Path();

    path.moveTo(size.width *1/2, size.height * 1/4);
    path.lineTo(size.width *1/6, size.height * 3/4);
    path.lineTo(size.width *5/6, size.height * 3/4);

    path.close();

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
