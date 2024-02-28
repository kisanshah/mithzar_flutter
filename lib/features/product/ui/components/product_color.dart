import 'package:api/api.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/core/extensions/string.dart';
import 'package:mithzar/features/product/ui/providers/product_detail_provider.dart';
import 'package:mithzar/features/theme/app_color.dart';

class ProductColor extends ConsumerWidget {
  const ProductColor({
    super.key,
    required this.product,
    required this.variant,
  });

  final Product product;
  final ProductVariant variant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Color',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        const Gap(10),
        Wrap(
          spacing: 10,
          children: product.variants?.map(
                (ele) {
                  final selected = variant.id == ele.id;
                  return GestureDetector(
                    onTap: () =>
                        ref.read(varinatIdProvider.notifier).update(ele.id),
                    child: Container(
                      height: 25,
                      width: 25,
                      padding: selected ? const EdgeInsets.all(3) : null,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          if (selected)
                            const BoxShadow(
                              spreadRadius: 1,
                              color: AppColor.black,
                            ),
                        ],
                        color: AppColor.white,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 0.5,
                              color: AppColor.black,
                            ),
                          ],
                          color: ele.color.hexToColor(),
                        ),
                      ),
                    ),
                  );
                },
              ).toList() ??
              [],
        ),
      ],
    );
  }
}
