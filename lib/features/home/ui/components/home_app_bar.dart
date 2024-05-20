import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/features/routes/router/app_router.gr.dart';
import 'package:mithzar/features/shared/providers/router_provider.dart';
import 'package:mithzar/features/theme/app_color.dart';
import 'package:mithzar/features/utils/app_const.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
        child: const Icon(
          PhosphorIconsBold.list,
        ),
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
          child: const Icon(
            PhosphorIconsBold.shoppingBag,
          ),
        ),
        const Gap(20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
