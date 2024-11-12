import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/src/banners/providers/banner_provider.dart';
import 'package:mithzar/src/shared/components/app_image.dart';

class BannerCarousel extends ConsumerWidget {
  const BannerCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bannersProvider);
    return state.unfold(
      (banners) {
        return AspectRatio(
          aspectRatio: 1.6,
          child: PageView.builder(
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              final banner = banners[index];
              return AppImage(
                url: banner.imageUrl ?? '',
              );
            },
            itemCount: banners.length,
          ),
        );
      },
    );
  }
}
