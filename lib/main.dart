import 'package:flutter/material.dart';
import 'package:flutter_blog_app_clean_architecture/core/theme/theme.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/presentation/pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Debug App',
      theme: AppTheme.darkTheme,
      home: SignUpPage(),
    );
  }
}
