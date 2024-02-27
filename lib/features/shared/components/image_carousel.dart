import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/features/components/app_image.dart';

class ImageCarousel extends ConsumerWidget {
  const ImageCarousel({
    super.key,
    required this.urls,
    this.height,
  });

  final Iterable<String> urls;
  final double? height;

  @override
  Widget build(context, ref) {
    final boxheight = height ?? MediaQuery.sizeOf(context).width * .75;
    return Container(
      color: Colors.red,
      height: boxheight,
      child: PageView.builder(
        padEnds: false,
        controller: PageController(
          viewportFraction: 0.75,
        ),
        physics:  const ClampingScrollPhysics(),
        itemCount: urls.length,
        itemBuilder: (context, index) {
          return AppImage(
            url: urls.elementAt(index),
            fit: BoxFit.contain,
          );
        },
      ),
    );
  }
}
