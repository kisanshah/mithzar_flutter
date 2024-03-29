import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/features/theme/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      // leadingWidth: 50,
      leading: GestureDetector(
        child: const Icon(
          Icons.arrow_back,
          color: AppColor.black,
        ),
        onTap: () => context.popRoute(),
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
