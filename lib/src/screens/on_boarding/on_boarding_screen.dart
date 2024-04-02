import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boarding_pages/on_boarding_page_1.dart';
import 'on_boarding_pages/on_boarding_page_2.dart';
import 'on_boarding_pages/on_boarding_page_3.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final controller = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: [
              OnBoardingPage1(size: size),
              OnBoardingPage2(size: size),
              OnBoardingPage3(size: size),
            ],

            liquidController: controller,
            onPageChangeCallback: onPageChangedCallBack,
          ),
          Positioned(
              top: 50,
              right: 25,
              child: TextButton(
                onPressed: () =>controller.jumpToPage(page: 2),
                child: const Text(
                  "SKIP",
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
              )),
          Positioned(
            bottom: 20,
            child: AnimatedSmoothIndicator(
              count: 3,
              activeIndex: controller.currentPage,
              effect: const WormEffect(
                activeDotColor: Color(0xff451e3e),
                dotHeight: 10, /*dotWidth: 10*/
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPageChangedCallBack(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
