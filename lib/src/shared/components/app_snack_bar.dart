import 'package:flutter/material.dart';
import 'package:mithzar/core/extensions/context.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

enum SnackBarType { success, error, warning }

class AppSnackbar extends StatelessWidget {
  const AppSnackbar({
    super.key,
    required this.text,
    this.type = SnackBarType.success,
  });

  final String text;
  final SnackBarType type;

  @override
  Widget build(BuildContext context) {
    final color = switch (type) {
      SnackBarType.success => (
          bgColor: const Color(0xFFD0F468),
          textColor: const Color(0xff445612),
          iconColor: const Color(0xFF6CA327),
          icon: PhosphorIconsFill.checkFat
        ),
      SnackBarType.error => (
          bgColor: const Color(0xFFE55950),
          textColor: const Color(0xFFFFD8D5),
          iconColor: const Color(0xFF872A24),
          icon: PhosphorIconsFill.warning
        ),
      SnackBarType.warning => (
          bgColor: const Color(0xFFE58E50),
          textColor: Colors.white,
          iconColor: const Color(0xFFB06632),
          icon: PhosphorIconsFill.warningCircle
        ),
    };
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: ShapeDecoration(
        color: color.bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadows: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: Offset(1, 1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  color.icon,
                  size: 32,
                  color: color.iconColor,
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Text(
                    text,
                    style: context.text.regular14.copyWith(
                      color: color.textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
