import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../extensions/debug.dart';
import '../components/app_loader.dart';
import '../routes/router/app_router.gr.dart';
import '../shared/providers/router_provider.dart';
import '../theme/app_color.dart';
import 'providers/sign_in_provider.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final emailCtrl =
      TextEditingController(text: 'shahkisan64@gmail.com'.ifDebug);
  final passwordCtrl = TextEditingController(text: '6CzehBq7_E6E4SG'.ifDebug);

  @override
  void dispose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Don't have an account yet?"),
            const Gap(5),
            GestureDetector(
              onTap: () => router.push(const SignUpRoute()),
              child: const Text(
                'Sign Up',
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
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(5),
                const Text(
                  'Sign in to your account to continue',
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
                TextField(
                  controller: emailCtrl,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const Gap(10),
                TextField(
                  controller: passwordCtrl,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                const Gap(30),
                Consumer(
                  builder: (context, ref, child) {
                    final state = ref.watch(signInNotifierProvider);
                    final notifier = ref.watch(signInNotifierProvider.notifier);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (state.loading) const AppLoader(),
                        if (state.error.isNotEmpty)
                          Text(
                            state.error,
                            style: const TextStyle(color: AppColor.red),
                          ),
                        if (state.error.isNotEmpty) const Gap(10),
                        if (!state.loading)
                          ElevatedButton(
                            onPressed: () async {
                              await notifier.signIn(
                                emailCtrl.text,
                                passwordCtrl.text,
                              );
                              router.push(const MainRoute());
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size.fromHeight(50),
                            ),
                            child: const Text('Sign In'),
                          ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
