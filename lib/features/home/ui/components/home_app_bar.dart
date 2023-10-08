import 'package:e_commerce_front_end/features/routes/router/app_router.gr.dart';
import 'package:e_commerce_front_end/features/shared/providers/router_provider.dart';
import 'package:e_commerce_front_end/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Assets.svg.menu.svg(fit: BoxFit.scaleDown),
      centerTitle: true,
      actions: [
        Assets.svg.notification.svg(),
        const Gap(15),
        GestureDetector(
          onTap: () => ref.read(routerProvider).push(const CartRoute()),
          child: Assets.svg.cart.svg(),
        ),
        const Gap(10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
