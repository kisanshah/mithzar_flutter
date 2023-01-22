import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../routes/router/app_router.gr.dart';
import '../shared/providers/router_provider.dart';
import '../theme/app_color.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
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
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'First & Last Name',
                  ),
                ),
                const Gap(10),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const Gap(10),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Phone',
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
                //OTP Input Cell of 4
                Row(
                  children: const [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: TextField(
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          contentPadding: EdgeInsets.zero,
                          hintText: '-',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(10),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: TextField(
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          contentPadding: EdgeInsets.zero,
                          hintText: '-',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(10),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: TextField(
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          contentPadding: EdgeInsets.zero,
                          hintText: '-',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(10),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: TextField(
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          contentPadding: EdgeInsets.zero,
                          hintText: '-',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(50),
                  ),
                  child: const Text('Send OTP'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
