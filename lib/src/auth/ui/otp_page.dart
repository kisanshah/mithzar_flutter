import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/core/extensions/context.dart';
import 'package:mithzar/src/auth/providers/auth_provider.dart';
import 'package:mithzar/src/auth/ui/components/otp_box.dart';
import 'package:mithzar/src/shared/components/app_loader.dart';

@RoutePage()
class OtpPage extends HookConsumerWidget {
  const OtpPage({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final otps = List.generate(
      4,
      (index) => (
        node: useFocusNode(),
        ctrl: useTextEditingController(text: '${index + 1}')
      ),
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
              style: context.text.semibold24,
            ),
            const Gap(5),
            Text(
              'Please verify otp to continue',
              style: context.text.regular16,
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
                final state = ref.watch(authProvider);
                final notifier = ref.read(authProvider.notifier);
                if (state is AsyncLoading) {
                  return const SizedBox(
                    height: 40,
                    child: AppLoader(),
                  );
                }
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    fixedSize: const Size.fromHeight(40),
                  ),
                  onPressed: () {
                    final otp = otps.map((e) => e.ctrl.text).join();
                    if (otp.length != 4) {
                      return;
                    }
                    notifier.verify(phone: phone, otp: otp);
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
