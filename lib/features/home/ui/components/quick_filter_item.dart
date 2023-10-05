import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';

class QuickFilterItem extends StatelessWidget {
  const QuickFilterItem({
    super.key,
    required this.name,
    required this.selected,
    required this.onTap,
  });
  final String name;
  final bool selected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? AppColor.black : null,
          border: Border.all(color: const Color(0xFFdfe6e9)),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 12,
            color: selected ? AppColor.white : const Color(0xFF222f3e),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
