import 'package:api/api.dart';
import 'package:e_commerce_front_end/features/components/header_with_action.dart';
import 'package:e_commerce_front_end/features/home/ui/components/trending_product_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TrendingProducts extends StatelessWidget {
  const TrendingProducts({super.key, required this.products});
  final List<Product> products;
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
            itemBuilder: (context, index) {
              return TrendingProductItem(product: products[index]);
            },
            itemCount: products.length,
          ),
        ),
        const Gap(30),
      ],
    );
  }
}
