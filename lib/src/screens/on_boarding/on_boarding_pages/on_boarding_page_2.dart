import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/image.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.to(() => const TrainersCalendar());
      },
      child: Container(
        color: BoardingPage2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage(SplashScreenImage2),
              height: size.height * 0.5,
            ),
            Column(
              children: [
                Text(
                  "Cafe",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  "Cafe small description",
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
