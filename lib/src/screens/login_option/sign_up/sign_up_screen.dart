import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Common_widget/fade_in_animation/animation_controller.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import 'sign_up_footer_widget.dart';
import 'sign_up_form_header_widget.dart';
import 'sign_up_form_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    final size = MediaQuery.of(context).size;
    final controllerWidget = Get.put(AnimatedController());
    controllerWidget.startAnimation();
    return Scaffold(
      backgroundColor: isDarkMode ? AppPrimaryColor : AppSecondaryColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + 10,
          padding: const EdgeInsets.all(defaultPadding + 10),
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SignUpFormHeader(size: size),
                    const SignUpForm(),
                    SignUpFooterWidget(isDarkMode: isDarkMode),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
