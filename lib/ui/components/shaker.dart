import 'dart:math' show pi, sin;

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart';

class Shaker extends StatefulWidget {
  const Shaker({super.key, required this.child});
  final Widget child;
  @override
  State<Shaker> createState() => ShakerState();
}

class ShakerState extends State<Shaker> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translation(getTranslation()),
      child: widget.child,
    );
  }

  Vector3 getTranslation() {
    final double progress = _animation.value;
    final offset = sin(progress * pi * 5.0);
    return Vector3(
      offset * 10,
      0,
      0,
    );
  }

  void shake() {
    _controller.forward(from: 0);
  }
}
