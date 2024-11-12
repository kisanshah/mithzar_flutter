import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
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
    final boxheight = height ?? MediaQuery.sizeOf(context).height * .40;
    return SizedBox(
      height: boxheight,
      child: ListView.separated(
        // padEnds: false,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: urls.length,
        itemBuilder: (context, index) {
          return AppImage(
            url: urls.elementAt(index),
            fit: BoxFit.contain,
          );
        },
        separatorBuilder: (context, index) => const Gap(10),
      ),
    );
  }
}
