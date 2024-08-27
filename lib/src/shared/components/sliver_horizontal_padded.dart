import 'package:flutter/material.dart';

class SliverHorizontalPadded extends StatelessWidget {
  const SliverHorizontalPadded({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverToBoxAdapter(
        child: child,
      ),
    );
  }
}
