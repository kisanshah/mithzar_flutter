import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/core/extensions/context.dart';
import 'package:mithzar/src/product/providers/section_provider.dart';
import 'package:mithzar/src/shared/components/variant_item.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ProductSection extends ConsumerWidget {
  const ProductSection({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sectionProvider);
    return state.unfoldSliver(
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
                aspectRatio: 1.55,
                child: ListView.separated(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    child: VariantItem(
                      variant: section.variants![index],
                    ),
                  ),
                  itemCount: section.variants?.length ?? 0,
                  separatorBuilder: (context, index) => const Gap(10),
                ),
              ),
            ),
            const SliverGap(15),
            SliverToBoxAdapter(
              child: Center(
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 0.5),
                    shape: const RoundedRectangleBorder(),
                    minimumSize: const Size(110, 25),
                  ),
                  onPressed: () {},
                  iconAlignment: IconAlignment.end,
                  icon: const Icon(PhosphorIconsLight.arrowRight, size: 18),
                  label: Text(
                    'View All',
                    style: context.text.light12,
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
