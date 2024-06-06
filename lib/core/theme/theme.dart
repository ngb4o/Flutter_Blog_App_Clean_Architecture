import 'package:flutter/material.dart';
import 'package:flutter_blog_app_clean_architecture/core/theme/app_pallete.dart';

class AppTheme {
  //set mau mac dinh la AppPallete.borderColor
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 3),
      borderRadius: BorderRadius.circular(10));

  static final darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppPallete.backgroundColor,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(27),
        //enable border
        enabledBorder: _border(),
        //focus border
        focusedBorder: _border(AppPallete.gradient2),
      )
  );
}
