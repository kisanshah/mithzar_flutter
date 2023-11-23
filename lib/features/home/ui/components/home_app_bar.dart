import 'package:e_commerce_front_end/features/routes/router/app_router.gr.dart';
import 'package:e_commerce_front_end/features/shared/providers/router_provider.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:e_commerce_front_end/features/utils/app_const.dart';
import 'package:e_commerce_front_end/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: GestureDetector(
        child: Assets.svg.menu.svg(fit: BoxFit.scaleDown),
        onTap: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: AppColor.black,
          fontWeight: FontWeight.w600,
          letterSpacing: 5,
          fontSize: 20,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () => ref.read(routerProvider).push(const CartRoute()),
          child: Assets.svg.cart.svg(),
        ),
        const Gap(20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
