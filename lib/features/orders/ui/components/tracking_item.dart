import 'package:e_commerce_front_end/features/orders/ui/components/tracker_line_painter.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackingItem extends StatelessWidget {
  const TrackingItem({
    super.key,
    required this.i,
  });

  final int i;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomPaint(
            painter: TrackerLinePainter(
              top: i != 0,
              bottom: i != 3,
            ),
            child: Center(
              child: Container(
                height: 90,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: i == 2 ? AppColor.accentColor : AppColor.black,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  [
                    Icons.check,
                    Icons.book,
                    Icons.ac_unit,
                    Icons.pin_drop,
                  ][i % 4],
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Gap(20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Order Placed',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const Text(
                  'We have received your order on 20-Dec-2019',
                ),
                // Gap(30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
