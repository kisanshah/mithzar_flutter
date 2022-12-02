import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../theme/app_color.dart';
import '../../utils/extension/widget.dart';

class QuickFilterItem extends StatelessWidget {
  const QuickFilterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 5, right: 10),
      child: Row(
        children: [
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            width: 30,
            decoration: BoxDecoration(
              color: AppColor.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.network(
              'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/2_3_f3ee5c27-4f14-4159-9fb2-dc60e7d6ec66_600x.png?v=1655536230',
            ),
          ),
          const Gap(5),
          const Text(
            'Headset',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ).toElevatedContainer();
  }
}
