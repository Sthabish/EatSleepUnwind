import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class AppTextFormFieldTheme {
  AppTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: AppPrimaryColor,
          hintStyle: TextStyle(fontFamily: "Inspiration", fontSize: 12),
          floatingLabelStyle:
              TextStyle(color: AppPrimaryColor, fontFamily: "Poppins"),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppPrimaryColor),
          ));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: AppSecondaryColor,
          hintStyle: TextStyle(fontFamily: "Inspiration"),
          floatingLabelStyle:
              TextStyle(color: AppSecondaryColor, fontFamily: "Poppins"),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppSecondaryColor),
          ));
}
