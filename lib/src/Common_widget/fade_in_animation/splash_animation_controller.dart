import 'package:get/get.dart';
import '../../screens/on_boarding/on_boarding_screen.dart';


class AnimatedSplashController extends GetxController {
  static AnimatedSplashController get find => Get.find();
  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 100));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 3000));
    Get.offAll(() => const OnBoardingScreen());
  }
}