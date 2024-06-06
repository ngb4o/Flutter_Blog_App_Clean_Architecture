import 'package:flutter/material.dart';
import 'package:flutter_blog_app_clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/presentation/widgets/auth_gradient_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Sign Up Text
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            //Text form field name, email, password
            const SizedBox(
              height: 30,
            ),
            const AuthField(hintText: 'Name'),
            const SizedBox(
              height: 15,
            ),
            const AuthField(hintText: 'Email'),
            const SizedBox(
              height: 15,
            ),
            const AuthField(hintText: 'Password'),

            const SizedBox(
              height: 20,
            ),

            //Button Sign Up
            const AuthGradientButton(),

            const SizedBox(
              height: 20,
            ),

            RichText(
              text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: ' Sign In',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
