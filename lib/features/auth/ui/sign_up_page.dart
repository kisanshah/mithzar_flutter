import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/core/extensions/log.dart';
import 'package:mithzar/core/extensions/string.dart';
import 'package:mithzar/features/auth/ui/components/otp_box.dart';
import 'package:mithzar/features/auth/ui/providers/signup_provider.dart';
import 'package:mithzar/features/shared/providers/router_provider.dart';
import 'package:mithzar/features/theme/app_color.dart';

@RoutePage()
class SignUpPage extends HookConsumerWidget {
  SignUpPage({super.key});

  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final otps = List.generate(
        4, (index) => (node: useFocusNode(), ctrl: useTextEditingController()),);
    final router = ref.watch(routerProvider); 
    final notifier = ref.watch(signUpNotifierProvider.notifier);
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Already have an account?'),
            const Gap(5),
            GestureDetector(
              onTap: router.pop,
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: AppColor.accentColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(toolbarHeight: 0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(5),
                const Text(
                  'Create an account to get started',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const Gap(20),
                const Placeholder(
                  fallbackHeight: 200,
                ),
                const Gap(20),
                TextFormField(
                  controller: notifier.nameCtrl,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return 'Name is required';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'First & Last Name',
                  ),
                ),
                const Gap(10),
                TextFormField(
                  controller: notifier.emailCtrl,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return 'Email is required';
                    } else if (!value.isEmail) {
                      return 'Invalid Email';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const Gap(10),
                TextFormField(
                  controller: notifier.phoneCtrl,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  maxLength: 10,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return 'Phone is required';
                    } else if (value!.length < 10) {
                      return 'Invalid Phone Number';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Phone',
                    counterText: '',
                  ),
                ),
                const Gap(10),
                TextFormField(
                  controller: notifier.passCtrl,
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return 'Password is required';
                    }
                    final valid = value.isStrongPasssword;
                    if (valid.isNotEmpty) {
                      return valid;
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                const Gap(20),
                TextFormField(
                  controller: notifier.passCtrl,
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return 'Password is required';
                    }
                    final valid = value.isStrongPasssword;
                    if (valid.isNotEmpty) {
                      return valid;
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                const Gap(20),
                Consumer(
                  builder: (context, ref, child) {
                    final notifier =
                        ref.watch(signUpNotifierProvider.notifier);
                    final state = ref.watch(signUpNotifierProvider);
                    state.logError();
                    return state.unfold((result) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (result.otpSent)
                            Text(
                              'OTP has been sent to ${notifier.emailCtrl.text} & ${notifier.phoneCtrl.text}',
                              style: const TextStyle(
                                color: AppColor.accentColor,
                              ),
                            ),
                          if (result.otpSent)
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
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
                          // if (state.error.isNotEmpty) const Gap(10),
                          // if (state.error.isNotEmpty)
                          //   Text(
                          //     state.error,
                          //     style: const TextStyle(color: AppColor.red),
                          //   ),
                          const Gap(20),
                          // if (result.loading)
                          //   const AppLoader()
                          // else
                          ElevatedButton(
                            onPressed: () {
                              final valid =
                                  _form.currentState?.validate() ?? false;
                              if (!valid) {
                                return;
                              }
                              if (!result.otpSent) {
                                notifier.sendOtp();
                              } else {
                                final otp =
                                    otps.map((e) => e.ctrl.text).join();
                                notifier.verifyOtp(otp);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size.fromHeight(50),
                            ),
                            child: Text(
                              result.otpSent ? 'Verify OTP' : 'Send OTP',
                            ),
                          ),
                        ],
                      );
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
