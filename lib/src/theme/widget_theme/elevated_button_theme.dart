import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

// light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
      backgroundColor: AppPrimaryColor,
      foregroundColor: AppWhiteColor,
      side: const BorderSide(color: AppPrimaryColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

// dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
      backgroundColor: AppSecondaryColor,
      foregroundColor: AppWhiteColor,
      side: const BorderSide(color: AppSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
}
