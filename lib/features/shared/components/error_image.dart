import 'package:flutter/material.dart';
import 'package:mithzar/features/theme/app_color.dart';

class ErrorImage extends StatelessWidget {
  const ErrorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        color: AppColor.grey,
      ),
      child: Center(child: Text('Failed to load Image')),
    );
  }
}
