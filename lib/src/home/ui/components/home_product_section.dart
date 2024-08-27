import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/core/extensions/context.dart';
import 'package:mithzar/src/home/ui/providers/section_provider.dart';
import 'package:mithzar/src/shared/components/variant_item.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomeProductSection extends ConsumerWidget {
  const HomeProductSection({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sectionNotifierProvider);
    return state.unfold(
      (sections) => MultiSliver(
        children: [
          for (final section in sections) ...[
            SliverToBoxAdapter(
              child: Text(
                '${section.title}',
                style: context.text.regular18,
                textAlign: TextAlign.center,
              ),
            ),
            SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 6 / 4,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
                  scrollDirection: Axis.horizontal,
                  controller: PageController(),
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 175,
                    height: 250,
                    child: VariantItem(
                      variant: section.variants![index],
                    ),
                  ),
                  itemCount: section.variants?.length ?? 0,
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
                    style: TextStyle(),
                  ),
                ),
              ),
            ),
            const SliverGap(30),
          ],
        ],
      ),
    );
  }
}
