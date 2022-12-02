import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../gen/assets.gen.dart';
import '../../utils/extension/widget.dart';
import '../components/quick_filter_item.dart';

class FilterList extends StatelessWidget {
  const FilterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: Assets.svg.filter.svg(fit: BoxFit.scaleDown),
          ).toElevatedContainer(),
          const Gap(10),
          const QuickFilterItem(),
          const Gap(5),
          const QuickFilterItem()
        ],
      ),
    );
  }
}
