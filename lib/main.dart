import 'package:flutter/material.dart';
import 'package:flutter_blog_app_clean_architecture/core/secrets/app_secrets.dart';
import 'package:flutter_blog_app_clean_architecture/core/theme/theme.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/presentation/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  //Supabase
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
      url: AppSecrets.supabaseUrl,
      anonKey: AppSecrets.supabaseAnonKey
  );
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
      home: LoginPage(),
    );
  }
}
