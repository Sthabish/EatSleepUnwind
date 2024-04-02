import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';


class AppOutlineButtonTheme {
  AppOutlineButtonTheme._();

  //Light Theme
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
      foregroundColor: AppWhiteColor,
      side: const BorderSide(color: AppPrimaryColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

  //Dark Theme
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
      foregroundColor: AppWhiteColor,
      side: const BorderSide(color: AppSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
}
