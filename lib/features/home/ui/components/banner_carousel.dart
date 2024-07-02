import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/features/components/app_image.dart';
import 'package:mithzar/features/home/ui/providers/banner_provider.dart';

class BannerCarousel extends StatefulHookConsumerWidget {
  const BannerCarousel({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends ConsumerState<BannerCarousel> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(bannerListProvider);
    return state.unfold(
      (banners) {
        return AspectRatio(
          aspectRatio: 3 / 1.5,
          child: PageView.builder(
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              final banner = banners[index];
              return AppImage(url: banner.imageUrl ?? '');
            },
            itemCount: banners.length,
          ),
        );
      },
    );
  }
}
