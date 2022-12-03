import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../components/image_box.dart';

class TrendingProductItem extends StatelessWidget {
  const TrendingProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        width: 150,
        child: Column(
          children: [
            const ImageBox(),
            const SizedBox(height: 10),
            //Name & Price
            Row(
              children: const [
                Text(
                  'Macbook Air',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  r'$1,000',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Gap(5),
            const Text(
              'MacBook Air with M1 is an incredibly portable laptop — it’s nimble and quick, with a silent, fanless design and a beautiful Retina display. Thanks to its slim profile and all‑day battery life, this Air moves at the speed of lightness.',
              maxLines: 3,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
