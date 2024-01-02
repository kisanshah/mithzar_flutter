import 'package:e_commerce_front_end/features/components/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePromoImage extends ConsumerWidget {
  const HomePromoImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SliverToBoxAdapter(
      child: AppImage(
        url:
            'https://img.freepik.com/premium-psd/horizontal-website-banne_451189-109.jpg',
      ),
    );
  }
}
