import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';

class HeaderWithAction extends StatelessWidget {
  const HeaderWithAction({
    super.key,
    required this.title,
    required this.action,
  });

  final String title;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: action,
            child: const Text(
              'See All',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
