import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/context.dart';
import 'package:mithzar/core/extensions/debug.dart';
import 'package:mithzar/src/auth/providers/auth_provider.dart';
import 'package:mithzar/src/shared/components/app_loader.dart';

@RoutePage()
class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final phoneCtrl = TextEditingController(text: '7977547951'.ifDebug);
  final form = GlobalKey<FormState>();

  @override
  void dispose() {
    phoneCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = context.text;
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: form,
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
                'Welcome Back!',
                style: text.semibold24,
              ),
              const Gap(5),
              Text(
                'Please sign in to your account to continue',
                style: text.regular16,
              ),
              const Gap(40),
              Text(
                'Phone',
                style: text.regular14,
              ),
              const Gap(5),
              TextFormField(
                controller: phoneCtrl,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value?.length != 10) {
                    return 'Please enter a valid phone number';
                  }
                  return null;
                },
                maxLength: 10,
                decoration: const InputDecoration(
                  counterText: '',
                  prefixText: '+91 ',
                ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const Gap(15),
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
                      fixedSize: const Size.fromHeight(40),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      if (form.currentState?.validate() != true) {
                        return;
                      }
                      notifier.sendOtp(phoneCtrl.text);
                    },
                    child: const Text('Continue'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
