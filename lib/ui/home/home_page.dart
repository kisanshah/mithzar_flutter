import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/ui/home/components/home_app_bar.dart';
import 'package:e_commerce_front_end/ui/home/components/trending_carousel.dart';
import 'package:e_commerce_front_end/ui/home/sections/filter.dart';
import 'package:e_commerce_front_end/ui/home/sections/trending_products.dart';
import 'package:e_commerce_front_end/ui/theme/app_color.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Find your style',
                style: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Gap(25),
            FilterList(),
            Gap(20),
            TrendingCarousel(),
            TrendingProducts(),
          ],
        ),
      ),
    );
  }
}
