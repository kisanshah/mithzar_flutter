import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../theme/app_color.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Don't have an account yet?"),
            Gap(5),
            Text(
              'Sign Up',
              style: TextStyle(
                color: AppColor.accentColor,
                decoration: TextDecoration.underline,
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
                onPressed: () {},
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
