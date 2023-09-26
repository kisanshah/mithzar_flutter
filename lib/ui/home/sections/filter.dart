import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../components/quick_filter_item.dart';

final selectedFilterProvider = StateProvider<String>((ref) {
  return 'All';
});

final filterProvider = StateProvider<List<String>>((ref) {
  return ['All', 'Men', 'Women'];
});

class FilterList extends ConsumerWidget {
  const FilterList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(filterProvider);
    final selected = ref.watch(selectedFilterProvider);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return QuickFilterItem(
            name: items[index],
            selected: selected == items[index],
            onTap: () {
              ref
                  .read(selectedFilterProvider.notifier)
                  .update((state) => items[index]);
            },
          );
        },
        itemCount: items.length,
        separatorBuilder: (context, index) {
          return const Gap(10);
        },
      ),
    );
  }
}
