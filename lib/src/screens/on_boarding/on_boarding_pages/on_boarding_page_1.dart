import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';
import '../../../constants/image.dart';
import '../../login_option/explore_login_option_widget/explore_login_option_screen.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ExploreLoginOptionScreen());
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        color: BoardingPage1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage(SplashScreenImage),
              height: size.height * 0.5,
            ),
            Column(
              children: [
                Text(
                  "Tennis",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  "Tennis small description",
                  style: Theme.of(context).textTheme.headline3,
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
