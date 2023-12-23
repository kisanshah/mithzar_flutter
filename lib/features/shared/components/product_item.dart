import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final images = [
      'https://www.kushals.com/cdn/shop/products/zircon-bangle-white-2-4-rose-gold-zircon-bangle-151226-35657651519644.jpg?v=167570325900&width=686',
      'https://www.kushals.com/cdn/shop/files/kundan-bangle-green-victorian-2-4-kundan-bangle-161563-36710721290396.jpg?v=169850889700&width=244',
      'https://www.kushals.com/cdn/shop/files/temple-bangle-white-oxidised-gold-2-4-silver-temple-bangle-165556-36821343371420.jpg?v=170021384900&width=244',
      'https://www.kushals.com/cdn/shop/files/antique-bangle-ruby-gold-2-4-antique-bangle-165536-36821333147804.jpg?v=170021422200&width=244',
    ];
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
                imageUrl: images[index % images.length],
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
                    'Zircon Bangle 151226' * 5,
                    maxLines: 1,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    '₹ 3,180',
                    style: TextStyle(
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
