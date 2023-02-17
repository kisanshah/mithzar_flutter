import 'package:flutter/material.dart';

import 'components/home_app_bar.dart';
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
      body: Column(
        children: const [
          FilterList(),
          TrendingProducts(),
        ],
      ),
    );
  }
}
