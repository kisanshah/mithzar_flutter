import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/src/shared/components/app_image.dart';

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
    final boxheight = height ?? MediaQuery.sizeOf(context).height * .45;
    return SizedBox(
      height: boxheight,
      child: PageView.builder(
        padEnds: false,
        physics: const ClampingScrollPhysics(),
        itemCount: urls.length,
        itemBuilder: (context, index) {
          return AppImage(
            url: urls.elementAt(index),
          );
        },
      ),
    );
  }
}
