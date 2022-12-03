import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text(
          'Amamzon',
        ),
      ),
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
