import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'animation_controller.dart';
import 'fade_in_animation_model.dart';

class AppFadeInAnimation extends StatelessWidget {
  AppFadeInAnimation({
    super.key,
    required this.durationInMs,
    required this.animate,
    required this.child,
  });

  final controller = Get.put(AnimatedController());
  final int durationInMs;
  final AppAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value
            ? animate!.topAfter
            : animate!.topBefore,
        left: controller.animate.value
            ? animate!.leftAfter
            : animate!.leftBefore,
        right: controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        bottom: controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
        ),
      ),
    );
  }
}
