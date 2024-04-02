import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/image.dart';

class OnBoardingPage3 extends StatelessWidget {
  const OnBoardingPage3({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      /*Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const SignUpPage()),
      );*/
    },
      child: Container(
        color: BoardingPage3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage(SplashScreenImage3),
              height: size.height * 0.5,
            ),
            Column(
              children: [
                Text(
                  "Yoga",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  "Yoga small description",
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
