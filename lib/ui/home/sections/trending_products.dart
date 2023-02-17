import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../components/header_with_action.dart';
import '../components/trending_product_item.dart';

class TrendingProducts extends StatelessWidget {
  const TrendingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWithAction(
          action: () {},
          title: 'Trending',
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return const TrendingProductItem();
            },
            itemCount: 10,
          ),
        ),
        const Gap(30),
      ],
    );
  }
}
