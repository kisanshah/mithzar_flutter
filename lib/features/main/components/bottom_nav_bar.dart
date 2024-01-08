import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/features/theme/app_color.dart';
import 'package:mithzar/gen/assets.gen.dart';

class NavData {
  NavData({
    required this.title,
    required this.svg,
  });

  final String title;
  final String svg;
}

final navItemProvider = Provider<List<NavData>>((ref) {
  return [
    NavData(
      title: 'Home',
      svg: Assets.svg.home.path,
    ),
    NavData(
      title: 'Search',
      svg: Assets.svg.search.path,
    ),
    NavData(
      title: 'Order',
      svg: Assets.svg.order.path,
    ),
    NavData(
      title: 'Profile',
      svg: Assets.svg.user.path,
    ),
  ];
});

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.onTap,
    required this.nav,
    required this.selected,
  });
  final NavData nav;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          children: [
            const Gap(10),
            SvgPicture.asset(
              nav.svg,
              colorFilter: ColorFilter.mode(
                selected ? AppColor.accentColor : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            const Gap(5),
            Text(
              nav.title,
              style: TextStyle(
                color: selected ? AppColor.accentColor : Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
