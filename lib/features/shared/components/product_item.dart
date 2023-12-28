import 'package:api/api.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_front_end/core/extensions/num.dart';
import 'package:e_commerce_front_end/features/shared/components/error_image.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context) {
    if (product == null) {
      return const SizedBox();
    }
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        border: Border.all(color: const Color(0xFFdfe6e9)),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: ClipRRect(
              child: CachedNetworkImage(
                imageUrl: '${product?.thumbnail?.url}',
                errorWidget: (context, url, error) => const ErrorImage(),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product?.name ?? '',
                    maxLines: 1,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    product?.price?.toRupee() ?? '',
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
