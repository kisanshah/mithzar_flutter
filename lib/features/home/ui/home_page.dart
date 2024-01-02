import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_app_bar.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_product_list.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_product_section.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_promo_image.dart';
import 'package:e_commerce_front_end/features/home/ui/providers/home_provider.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

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
    return Scaffold(
      appBar: const HomeAppBar(
        title: 'MITHZAR',
      ),
      backgroundColor: Colors.white,
      body: state.unfold(
        (sections) => const CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: [
            HomePromoImage(),
            SliverGap(20),
            HomeProductSection(),
            HomeProductList(),
          ],
        ),
      ),
    );
  }
}
