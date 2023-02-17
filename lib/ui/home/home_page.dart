import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../theme/app_color.dart';
import 'components/home_app_bar.dart';
import 'components/trending_carousel.dart';
import 'sections/filter.dart';
import 'sections/trending_products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
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
