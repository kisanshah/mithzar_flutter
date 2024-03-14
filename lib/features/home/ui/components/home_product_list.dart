import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/features/components/app_loader.dart';
import 'package:mithzar/features/home/ui/components/home_product_list_filter.dart';
import 'package:mithzar/features/home/ui/providers/variant_list_provider.dart';
import 'package:mithzar/features/shared/components/variant_item.dart';
import 'package:mithzar/features/shared/state/pagination_state.dart';
import 'package:mithzar/features/theme/app_color.dart';
import 'package:mithzar/gen/assets.gen.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomeProductList extends ConsumerWidget {
  const HomeProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(variantListProvider);
    final notifier = ref.read(variantListProvider.notifier);
    return state.unfoldSliver(
      (variants) => MultiSliver(
        children: [
          SliverAppBar(
            pinned: true,
            title: Text(
              'Recently Added',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
              ),
            ),
            actions: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return HomeProductListFilter(
                        filter: state.filter,
                        result: notifier.applyFilter,
                      );
                    },
                  );
                },
                child: Assets.svg.filter.svg(
                  colorFilter: const ColorFilter.mode(
                    AppColor.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const Gap(20),
            ],
            centerTitle: false,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.builder(
              itemCount: variants.length,
              itemBuilder: (context, index) {
                notifier.next(index);
                return VariantItem(variant: variants[index]);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 220,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
            ),
          ),
          if (state.more)
            const SliverToBoxAdapter(
              child: AppLoader(),
            ),
        ],
      ),
    );
  }
}
