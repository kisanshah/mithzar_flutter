import 'package:e_commerce_front_end/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Assets.svg.menu.svg(fit: BoxFit.scaleDown),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Assets.svg.notification.svg(fit: BoxFit.scaleDown),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Assets.svg.cart.svg(fit: BoxFit.scaleDown),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
