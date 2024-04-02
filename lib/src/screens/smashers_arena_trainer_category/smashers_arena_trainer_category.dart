import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../constants/text.dart';
import '../smashers_arena_trainer/smashers_arena_trainer_profile/advanced_smasher_arena_trainer_profile.dart';
import '../smashers_arena_trainer/smashers_arena_trainer_profile/beginner_smaher_arena_trainer_profile.dart';
import '../smashers_arena_trainer/smashers_arena_trainer_profile/intermediate_smasher_arena_trainer_profile.dart';

class SmashersArenaTrainerCategory extends StatelessWidget {
  const SmashersArenaTrainerCategory({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    final colour1 = isDarkMode ? AppSecondaryColor : AppPrimaryColor;
    final colour2 = isDarkMode ? AppPrimaryColor : AppSecondaryColor;
    final colour3 = isDarkMode ? Colors.grey : Colors.white;
    final colour4 = isDarkMode ? Colors.white : Colors.black;
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: colour2,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Choose the type of training".toUpperCase(),
                style: txtTheme.headline2,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const BeginnersSmasherTrainerProfile());
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: colour1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                  height: size.height / 5.5,
                  width: size.width * 0.9,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      beginner.toUpperCase(),
                      style: GoogleFonts. /*beauRivage*/ pacifico(
                          fontSize: 38,
                          // fontWeight: FontWeight.bold,
                          color: colour4),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const IntermediateSmasherTrainerProfile());
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: colour1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                  height: size.height / 5.5,
                  width: size.width * 0.9,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      intermediate.toUpperCase(),
                      style: GoogleFonts.exo2(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: colour4),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const AdvancedSmasherTrainerProfile());
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: colour1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                  height: size.height / 5.5,
                  width: size.width * 0.9,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      advanced.toUpperCase(),
                      style: GoogleFonts.archivoBlack(
                          fontSize: 38,
                          // fontWeight: FontWeight.bold,
                          color: colour4),
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 0),
            ],
          ),
        ),
      ),
    );
  }
}
