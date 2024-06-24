import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/features/auth/ui/components/otp_box.dart';
import 'package:mithzar/features/auth/ui/providers/phone_auth_provider.dart';
import 'package:mithzar/features/components/app_loader.dart';

@RoutePage()
class OtpPage extends HookConsumerWidget {
  const OtpPage({
    super.key,
    required this.verificationId,
  });

  final String verificationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final otps = List.generate(
      6,
      (index) => (node: useFocusNode(), ctrl: useTextEditingController()),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Verify OTP'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(otps.length, (index) {
                    final otp = otps[index];
                    return OtpBox(
                      node: otp.node,
                      controller: otp.ctrl,
                    );
                  }),
                ],
              ),
            ),
            const Gap(30),
            Consumer(
              builder: (context, ref, child) {
                final state = ref.watch(phoneAuthProvider);
                final notifier = ref.read(phoneAuthProvider.notifier);
                if (state is AsyncLoading) {
                  return const AppLoader();
                }
                return ElevatedButton(
                  onPressed: () {
                    final otp = otps.map((e) => e.ctrl.text).join();
                    if (otp.length != 6) {
                      return;
                    }
                    notifier.verify(otp: otp, verificationId: verificationId);
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(45),
                  ),
                  child: const Text('Continue'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
