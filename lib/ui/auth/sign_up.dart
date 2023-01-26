import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../extensions/string.dart';
import '../components/app_loader.dart';
import '../routes/router/app_router.gr.dart';
import '../shared/providers/router_provider.dart';
import '../theme/app_color.dart';
import 'components/otp_box.dart';
import 'providers/register_provider.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _otpInput1 = FocusNode();
  final _otpInput2 = FocusNode();
  final _otpInput3 = FocusNode();
  final _otpInput4 = FocusNode();

  @override
  void dispose() {
    _otpInput1.dispose();
    _otpInput2.dispose();
    _otpInput3.dispose();
    _otpInput4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    final notifier = ref.watch(registerNotifierProvider.notifier);
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
              onTap: () => router.navigate(const SignInRoute()),
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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
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
                  Consumer(
                    builder: (context, ref, child) {
                      final notifier =
                          ref.watch(registerNotifierProvider.notifier);
                      final state = ref.watch(registerNotifierProvider);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (state.otpSent)
                            Text(
                              'OTP has been sent to ${notifier.phoneCtrl.text}',
                              style:
                                  const TextStyle(color: AppColor.accentColor),
                            ),
                          if (state.otpSent)
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  OtpBox(
                                    node: _otpInput1,
                                  ),
                                  const Gap(10),
                                  OtpBox(
                                    node: _otpInput2,
                                  ),
                                  const Gap(10),
                                  OtpBox(
                                    node: _otpInput3,
                                  ),
                                  const Gap(10),
                                  OtpBox(
                                    node: _otpInput4,
                                  ),
                                  const Gap(10),
                                ],
                              ),
                            ),
                          if (state.error.isNotEmpty) const Gap(10),
                          if (state.error.isNotEmpty)
                            Text(
                              state.error,
                              style: const TextStyle(color: AppColor.red),
                            ),
                          const Gap(20),
                          if (state.loading)
                            const AppLoader()
                          else
                            ElevatedButton(
                              onPressed: () {
                                final valid =
                                    _formKey.currentState?.validate() ?? false;
                                if (!valid) {
                                  return;
                                }
                                if (!state.otpSent) {
                                  notifier.sendOtp();
                                } else {
                                  notifier.verifyOtp();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size.fromHeight(50),
                              ),
                              child: Text(
                                state.otpSent ? 'Verify OTP' : 'Send OTP',
                              ),
                            )
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
