import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/core/extensions/context.dart';
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
      appBar: AppBar(toolbarHeight: 0),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: CachedNetworkImage(
                imageUrl:
                    'https://worldartcommunity.com/images/item-images/item_image_0a29c3abd319ba64747a16432bf5559a.jpg',
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(40),
            Text(
              'Verification!',
              style: context.text.title,
            ),
            const Gap(5),
            Text(
              'Please verify otp to continue',
              style: context.text.subTitle,
            ),
            const Gap(30),
            Row(
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
