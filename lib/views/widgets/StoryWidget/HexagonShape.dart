import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.08077344,size.height*0.7312520);
    path_0.lineTo(size.width*0.08077344,size.height*0.2687637);
    path_0.lineTo(size.width*0.5000000,size.height*0.03642969);
    path_0.lineTo(size.width*0.9192266,size.height*0.2687637);
    path_0.lineTo(size.width*0.9192266,size.height*0.7312520);
    path_0.lineTo(size.width*0.5000000,size.height*0.9635879);
    path_0.close();

    Paint paint0Fill = Paint()..style=PaintingStyle.fill;
    paint0Fill.color = const Color(0xff113a49).withOpacity(1.0);
    canvas.drawPath(path_0,paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width*0.5000000,size.height*0.07285742);
    path_1.lineTo(size.width*0.8873691,size.height*0.2875430);
    path_1.lineTo(size.width*0.8873691,size.height*0.7124551);
    path_1.lineTo(size.width*0.5000000,size.height*0.9271426);
    path_1.lineTo(size.width*0.1126309,size.height*0.7124570);
    path_1.lineTo(size.width*0.1126309,size.height*0.2875430);
    path_1.lineTo(size.width*0.5000000,size.height*0.07285742);
    path_1.moveTo(size.width*0.5000000,0);
    path_1.lineTo(size.width*0.04891602,size.height*0.2500000);
    path_1.lineTo(size.width*0.04891602,size.height*0.7500000);
    path_1.lineTo(size.width*0.5000000,size.height);
    path_1.lineTo(size.width*0.9510840,size.height*0.7500000);
    path_1.lineTo(size.width*0.9510840,size.height*0.2500000);
    path_1.lineTo(size.width*0.5000000,0);
    path_1.close();

    Paint paint1Fill = Paint()..style=PaintingStyle.fill;
    paint1Fill.color = const Color(0xff113a49).withOpacity(1.0);
    canvas.drawPath(path_1,paint1Fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}