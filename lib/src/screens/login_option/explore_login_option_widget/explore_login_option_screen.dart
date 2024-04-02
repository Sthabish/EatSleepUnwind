
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Common_widget/fade_in_animation/animation_controller.dart';
import '../../../Common_widget/fade_in_animation/fade_in_animation_model.dart';
import '../../../Common_widget/fade_in_animation/fade_in_animations.dart';
import '../../../constants/colors.dart';
import 'explore_login_option_button_widget.dart';
import 'explore_login_option_image_widget.dart';
import 'explore_login_option_text_widget.dart';

class ExploreLoginOptionScreen extends StatelessWidget {
  const ExploreLoginOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    final controllerWidget = Get.put(AnimatedController());
    controllerWidget.startAnimation();

    return Scaffold(
      backgroundColor: isDarkMode ? AppPrimaryColor : AppSecondaryColor,
      body: Stack(
        children: [
          AppFadeInAnimation(
            animate: AppAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                rightBefore: 0,
                rightAfter: 0,
                topAfter: 0,
                leftAfter: 0,
                leftBefore: 0,
                topBefore: 0),
            durationInMs: 1000,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExploreLoginOptionImage(ht: ht),
                  const ExploreLoginOptionTextWidget(),
                  const ExploreLoginOptionButtons()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
