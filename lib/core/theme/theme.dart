import 'package:flutter/material.dart';
import 'package:flutter_blog_app_clean_architecture/core/theme/app_pallete.dart';

class AppTheme {
  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor
  );
}