import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../main.dart';
import '../routes/router/app_router.gr.dart';
import '../theme/app_color.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
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
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const Gap(10),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const Gap(30),
              ElevatedButton(
                onPressed: () {
                  router.replace(const MainRoute());
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromHeight(50),
                ),
                child: const Text('Sign In'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
