import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/features/components/app_image.dart';

class HomePromoImage extends ConsumerWidget {
  const HomePromoImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SliverToBoxAdapter(
      child: AppImage(
        url:
            'https://www.shutterstock.com/image-photo/indian-design-gold-bangles-decorative-600nw-2175114437.jpg',
      ),
    );
  }
}
