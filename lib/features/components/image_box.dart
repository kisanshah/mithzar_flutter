import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({super.key, this.height = 140, this.width = 150});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(height * 0.1),
      decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(10),
          ),
      child: Center(
        child: Image.network(
          'https://www.apple.com/v/macbook-air/o/images/overview/compare/compare_mba_m1__dsgh2hoxlkae_large_2x.png',
          // height: 75,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
