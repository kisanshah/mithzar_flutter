import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_app_bar.dart';
import 'package:e_commerce_front_end/features/shared/components/product_item.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:e_commerce_front_end/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
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
    return Scaffold(
      appBar: const HomeAppBar(
        title: 'SEARCH',
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      isDense: true,
                      hintText: 'Bangles...',
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                          color: AppColor.black,
                          width: 0.7,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                          color: AppColor.black,
                          width: 0.7,
                        ),
                      ),
                      suffixIconConstraints: const BoxConstraints(),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Assets.svg.search.svg(
                          colorFilter: const ColorFilter.mode(
                            AppColor.black,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(5),
                  Wrap(
                    spacing: 7,
                    children: List.generate(
                      7,
                      (index) => Chip(
                        padding: EdgeInsets.zero,
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        side: const BorderSide(
                          width: 0.5,
                        ),
                        shape: const RoundedRectangleBorder(),
                        backgroundColor: Colors.transparent,
                        label: Text(
                          'Bangles ${index + 1}',
                          style: const TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Search Result ⚡',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.builder(
              itemBuilder: (context, index) {
                return const ProductItem();
              },
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 220,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Trending Products\n⚡',
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
                  child: const ProductItem(),
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
        ],
      ),
    );
  }
}
