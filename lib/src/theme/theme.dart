import 'package:flutter/material.dart';
import 'widget_theme/elevated_button_theme.dart';
import 'widget_theme/outlined_button_theme.dart';
import 'widget_theme/text_form_field_theme.dart';
import 'widget_theme/text_theme.dart';

class MyAppTheme {
  // MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.darkOutlineButtonTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
