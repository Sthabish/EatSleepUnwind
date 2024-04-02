import 'package:eatplayunwind/src/screens/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 500),
      home: const OnBoardingScreen(),
    );
  }
}
