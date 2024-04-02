import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Common_widget/fade_in_animation/animation_controller.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import 'login_footer_widget.dart';
import 'login_form_header.dart';
import 'login_form_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    final size = MediaQuery.of(context).size;
    final controllerWidget = Get.put(AnimatedController());
    controllerWidget.startAnimation();

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? AppPrimaryColor : AppSecondaryColor,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              child: ListView(scrollDirection: Axis.vertical,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LoginFormHeader(size: size),
                      const LoginForm(),
                      LoginFooterWidget(isDarkMode: isDarkMode)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

