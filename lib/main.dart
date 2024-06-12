import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app_clean_architecture/core/secrets/app_secrets.dart';
import 'package:flutter_blog_app_clean_architecture/core/theme/theme.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/data/repository/auth_repository_impl.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/domain/usecases/user_sign_up.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_blog_app_clean_architecture/features/auth/presentation/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    final supabase = await Supabase.initialize(
      url: AppSecrets.supabaseUrl,
      anonKey: AppSecrets.supabaseAnonKey,
    );
    runApp(MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(
            userSignUp: UserSignUp(
              AuthRepositoryImpl(
                AuthRemoteDataSourceImpl(
                  supabase.client,
                ),
              ),
            ),
          ),
        ),
      ],
      child: const MyApp(),
    ));
  } catch (e) {
    print('Supabase initialization error: $e');
  }
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
