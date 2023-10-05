import 'package:api/api.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingProductItem extends StatelessWidget {
  const TrendingProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 220,
      decoration: BoxDecoration(
        color: AppColor.white,
        border: Border.all(color: const Color(0xFFdfe6e9)),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 122,
            width: double.infinity,
            // child: ClipRRect(
            //   borderRadius: const BorderRadius.only(
            //     topLeft: Radius.circular(10),
            //     topRight: Radius.circular(10),
            //   ),
            //   child: CachedNetworkImage(
            //     imageUrl:
            //         'https://cdn.shopify.com/s/files/1/0014/9169/7721/products/IMG_9486_1024x1024@2x.jpg?v=1668169970',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            child: Placeholder(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name ?? '',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Rs. ${product.price ?? ''}',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Add to cart'),
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
