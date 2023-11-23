import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_app_bar.dart';
import 'package:e_commerce_front_end/features/home/ui/providers/home_notifier.dart';
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

  final images = [
    'https://www.kushals.com/cdn/shop/products/zircon-bangle-white-2-4-rose-gold-zircon-bangle-151226-35657651519644.jpg?v=167570325900&width=686',
    'https://www.kushals.com/cdn/shop/files/kundan-bangle-green-victorian-2-4-kundan-bangle-161563-36710721290396.jpg?v=169850889700&width=244',
    'https://www.kushals.com/cdn/shop/files/temple-bangle-white-oxidised-gold-2-4-silver-temple-bangle-165556-36821343371420.jpg?v=170021384900&width=244',
    'https://www.kushals.com/cdn/shop/files/antique-bangle-ruby-gold-2-4-antique-bangle-165536-36821333147804.jpg?v=170021422200&width=244',
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
                  child: ProductItem(images: images, index: index),
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
                  child: ProductItem(images: images, index: index),
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Recently Added',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        // showDragHandle: true,
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
                  // const Icon(Icons.filter),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.builder(
              itemBuilder: (context, index) {
                return ProductItem(images: images, index: index);
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

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.images,
    required this.index,
  });

  final List<String> images;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        border: Border.all(color: const Color(0xFFdfe6e9)),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: ClipRRect(
              child: CachedNetworkImage(
                imageUrl: images[index % images.length],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Zircon Bangle 151226' * 5,
                    maxLines: 1,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    '₹ 3,180',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
