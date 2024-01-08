import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/features/home/ui/providers/section_provider.dart';
import 'package:mithzar/features/shared/components/product_item.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:mithzar/features/theme/app_color.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomeProductSection extends ConsumerWidget {
  const HomeProductSection({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sectionNotifierProvider);

    return state.unfoldSliver(
      (sections) => MultiSliver(
        children: [
          for (final section in sections) ...[
            SliverToBoxAdapter(
              child: Text(
                '${section.title}',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
                  scrollDirection: Axis.horizontal,
                  controller: PageController(),
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 175,
                    height: 250,
                    child: ProductItem(
                      product: section.products![index],
                    ),
                  ),
                  itemCount: section.products?.length,
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
                    style: TextStyle(
                      color: AppColor.black,
                    ),
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
