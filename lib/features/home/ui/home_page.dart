import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_app_bar.dart';
import 'package:e_commerce_front_end/features/home/ui/providers/home_notifier.dart';
import 'package:e_commerce_front_end/features/shared/components/product_item.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:e_commerce_front_end/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final colors = [
    const Color(0xFFFFD700),
    const Color(0xffc0c0c0),
  ];

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeNotifierProvider);
    return Scaffold(
      appBar: const HomeAppBar(
        title: 'MITHZAR',
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CachedNetworkImage(
              imageUrl:
                  'https://www.shutterstock.com/image-photo/indian-design-gold-bangles-decorative-600nw-2175114437.jpg',
            ),
          ),
          const SliverGap(20),
          SliverToBoxAdapter(
            child: Text(
              'Early Black Friday Price Drop\n⚡',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
                scrollDirection: Axis.horizontal,
                controller: PageController(),
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 175,
                  height: 250,
                  child: ProductItem(index: index),
                ),
                itemCount: 6,
              ),
            ),
          ),
          const SliverGap(15),
          SliverToBoxAdapter(
            child: Center(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'View All  →',
                  style: TextStyle(
                    color: AppColor.black,
                  ),
                ),
              ),
            ),
          ),
          const SliverGap(20),
          SliverToBoxAdapter(
            child: Text(
              'Wedding Special ❤️',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
                scrollDirection: Axis.horizontal,
                controller: PageController(),
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 175,
                  height: 250,
                  child: ProductItem(index: index),
                ),
                itemCount: 6,
              ),
            ),
          ),
          const SliverGap(15),
          SliverToBoxAdapter(
            child: Center(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'View All  →',
                  style: TextStyle(
                    color: AppColor.black,
                  ),
                ),
              ),
            ),
          ),
          const SliverGap(30),
          SliverAppBar(
            pinned: true,
            title: Text(
              'Recently Added',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
              ),
            ),
            actions: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Spacer(),
                                  Expanded(
                                    child: Text(
                                      'Filter',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Assets.svg.cancel.svg(),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Assets.svg.filter.svg(
                  colorFilter: const ColorFilter.mode(
                    AppColor.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const Gap(20),
            ],
            centerTitle: false,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.builder(
              itemBuilder: (context, index) {
                return ProductItem(index: index);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 220,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
