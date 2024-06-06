import 'package:flutter/material.dart';
import 'package:flutter_blog_app_clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/presentation/widgets/auth_gradient_button.dart';

class LoginPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => LoginPage(),);
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                ),
                //Sign Up Text
                const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                //Text form field name, email, password
                const SizedBox(
                  height: 30,
                ),
                AuthField(
                  hintText: 'Email',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 15,
                ),
                AuthField(
                  hintText: 'Password',
                  controller: passwordController,
                  isObscureText: true,
                ),

                const SizedBox(
                  height: 20,
                ),

                //Button Sign Up
                const AuthGradientButton(
                  buttonText: 'Sign In',
                ),

                const SizedBox(
                  height: 20,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                      SignUpPage.route()
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                          TextSpan(
                            text: ' Sign Up',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: AppPallete.gradient2,
                                    fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
