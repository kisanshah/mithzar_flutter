import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/features/theme/app_color.dart';

class OrderImage extends ConsumerWidget {
  const OrderImage({
    super.key,
    required this.products,
  });

  final List<Product> products;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // FIXME(Kisan): add variant state management
    // if (products.length < 4) {
    //   return AppImage(
    //     url: products.first.thumbnail?.url ?? '',
    //   );
    // }
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length > 4 ? 4 : products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Stack(
          fit: StackFit.expand,
          children: [
            // FIXME(Kisan): add variant state management
            // AppImage(
            //   url: products[index].thumbnail?.url ?? '',
            // ),
            if (index == 3)
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.black38,
                ),
                child: Text(
                  '+1',
                  style: GoogleFonts.poppins(
                    color: AppColor.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
