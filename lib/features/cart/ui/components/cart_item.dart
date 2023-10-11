import 'package:api/api.dart';
import 'package:e_commerce_front_end/features/components/image_box.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.item,
  }) : super(key: key);
  final Cart item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          const ImageBox(
            height: 100,
            width: 90,
          ),
          const Gap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.product?.name ?? '',
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  item.product?.description ?? '',
                  maxLines: 2,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "₹ ${item.product?.price.toString() ?? ''}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(25, 25),
                          ),
                          child: const Text(
                            '-',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const Text(
                          '1',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(25, 25),
                          ),
                          onPressed: () {},
                          child: const Text(
                            '+',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
