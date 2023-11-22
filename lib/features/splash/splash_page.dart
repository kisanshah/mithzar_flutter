import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/core/instances/token_provider.dart';
import 'package:e_commerce_front_end/features/routes/router/app_router.gr.dart';
import 'package:e_commerce_front_end/features/shared/providers/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'MITHZAR',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            letterSpacing: 5,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Future<void> navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    ref.read(tokenNotifierProvider.notifier).init();
    final router = ref.watch(routerProvider);
    router.replace(const MainRoute());
  }
}