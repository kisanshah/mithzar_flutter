import 'package:flutter/material.dart';
import 'package:mithzar/features/theme/app_color.dart';

class TrackerLinePainter extends CustomPainter {
  TrackerLinePainter({this.top = true, this.bottom = true});

  final bool top;
  final bool bottom;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = AppColor.black;
    final h = size.height;
    final w = size.width;
    final center = Offset(w / 2, h / 2);
    canvas.drawRect(
      Rect.fromPoints(
        Offset(w * 0.45, top ? 0 : h / 2),
        Offset(w * 0.55, bottom ? h : h / 2),
      ),
      paint,
    );

    canvas.drawCircle(center, 10, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
