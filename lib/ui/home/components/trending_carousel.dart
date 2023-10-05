import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_front_end/ui/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final productProvider = Provider<List<String>>((ref) {
  return [
    'https://cdn.shopify.com/s/files/1/0014/9169/7721/products/IMG_9486_1024x1024@2x.jpg?v=1668169970',
    'https://cdn.shopify.com/s/files/1/0014/9169/7721/products/IMG_44992_1080x.jpg?v=1664626140',
    'https://cdn.shopify.com/s/files/1/0014/9169/7721/products/IMG_82592_1024x1024@2x.jpg?v=1664627773',
    'https://cdn.shopify.com/s/files/1/0014/9169/7721/products/IMG_9486_1024x1024@2x.jpg?v=1668169970',
    'https://cdn.shopify.com/s/files/1/0014/9169/7721/products/IMG_44992_1080x.jpg?v=1664626140',
    'https://cdn.shopify.com/s/files/1/0014/9169/7721/products/IMG_82592_1024x1024@2x.jpg?v=1664627773',
  ];
});

class TrendingCarousel extends ConsumerStatefulWidget {
  const TrendingCarousel({
    super.key,
  });

  @override
  ConsumerState<TrendingCarousel> createState() => _TrendingCarouselState();
}

class _TrendingCarouselState extends ConsumerState<TrendingCarousel> {
  final pageCtrl = PageController(viewportFraction: 0.65, initialPage: 1);
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(productProvider);
    return SizedBox(
      height: 350,
      child: PageView.builder(
        controller: pageCtrl,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedBuilder(
            animation: pageCtrl,
            builder: (context, anim) {
              const double value = 0.0;
              // if (pageCtrl.position.haveDimensions) {
              //   value = index - (pageCtrl.page ?? 0);
              //   value = (value * -0.04).clamp(-1, 1);
              // }
              return Transform.rotate(
                angle: pi * value,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      border: Border.all(color: const Color(0xFFdfe6e9)),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 240,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: CachedNetworkImage(
                              imageUrl: products[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Traditional Rajasthani',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Rs. 1,099.00',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
