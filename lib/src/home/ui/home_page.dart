import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/src/home/ui/components/banner_carousel.dart';
import 'package:mithzar/src/home/ui/components/home_product_list.dart';
import 'package:mithzar/src/home/ui/components/home_product_section.dart';
import 'package:mithzar/src/home/ui/providers/home_provider.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(homeNotifierProvider.notifier).fetch();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeNotifierProvider);
    return state.unfold(
      (sections) => const CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: BannerCarousel()),
          HomeProductSection(),
          HomeProductList(),
        ],
      ),
    );
  }
}
