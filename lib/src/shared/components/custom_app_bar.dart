import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leadingWidth: 50,
      leading: GestureDetector(
        child: const Icon(
          Icons.arrow_back,
        ),
        onTap: () => context.maybePop(),
      ),
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
