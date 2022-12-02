import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Widget toElevatedContainer() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: this,
    );
  }
}
