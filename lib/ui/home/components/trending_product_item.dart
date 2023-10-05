import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_front_end/gen/assets.gen.dart';
import 'package:e_commerce_front_end/ui/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingProductItem extends StatelessWidget {
  const TrendingProductItem({
    Key? key,
  }) : super(key: key);

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
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: CachedNetworkImage(
                imageUrl:
                    'https://cdn.shopify.com/s/files/1/0014/9169/7721/products/IMG_9486_1024x1024@2x.jpg?v=1668169970',
                fit: BoxFit.cover,
              ),
            ),
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
                            'Traditional Rajasthani',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Rs. 1,099.00',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Assets.svg.favorite.svg(),
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
