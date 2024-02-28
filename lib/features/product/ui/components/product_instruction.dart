import 'package:api/api.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductInstruction extends ConsumerWidget {
  const ProductInstruction({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Instructions',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        const Gap(10),
        ...List.generate(
          product.instructions?.length ?? 0,
          (index) {
            final instruction = product.instructions![index];
            return Text(
              '\u2022 $instruction',
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                fontSize: 12,
              ),
            );
          },
        ),
      ],
    );
  }
}
