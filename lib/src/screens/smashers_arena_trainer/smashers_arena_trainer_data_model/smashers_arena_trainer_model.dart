import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../constants/image.dart';
import '../../../constants/text.dart';
import '../smashers_arena_trainer_profile/advanced_smasher_arena_trainer_profile.dart';
import '../smashers_arena_trainer_profile/beginner_smaher_arena_trainer_profile.dart';
import '../smashers_arena_trainer_profile/intermediate_smasher_arena_trainer_profile.dart';

class SmashersArenaTrainerModel {
  final int id;
  final String trainerName;
  final String trainerCategory;
  final List<String> genre;
  final double rating;
  final String trainerBriefing;
  final String trainerBriefing1;
  final String trainerImage;
  final String trainerBgImage;
  final double trainerPrice;
  final String trainerHeight;
  final String trainerWeight;
  final String trainerDob;
  final String trainerExperience;
  final VoidCallback? onPress;

  SmashersArenaTrainerModel(
    this.id,
    this.trainerName,
    this.trainerCategory,
    this.genre,
    this.rating,
    this.trainerBriefing,
    this.trainerBriefing1,
    this.trainerImage,
    this.trainerBgImage,
    this.trainerPrice,
    this.trainerHeight,
    this.trainerWeight,
    this.trainerDob,
    this.trainerExperience,
    this.onPress,
    // this.staffList,
  );

  static List<SmashersArenaTrainerModel> list = [
    SmashersArenaTrainerModel(
      001,
      "trainer 1 Name",
      "$beginner level Trainer",
      ["Foundation Expert", "basic knowledge"],
      4,
      beginnerTrainerBriefing,
      beginnerTrainerBriefing1,
      beginnerTrainerDp,
      beginnerTrainerBg,
      500.0,
      "5.9 ft",
      "78 kg",
      "13-03-1999"," 2 Yrs",
      () {
        Get.to(() => const BeginnersSmasherTrainerProfile());
      },
    ),
    SmashersArenaTrainerModel(
      002,
      "trainer 2 Name",
      "$intermediate level Trainer",
      ["personalised Expert", "Help Enhance Basic Skills"],
      3,
      intermediateTrainerBriefing,
      intermediateTrainerBriefing1,
      intermediateTrainerDp,
      intermediateTrainerBg,
      500.0,
      "5.7 ft",
      "95 kg",
      "10-04-1996"," 3 Yrs",
      () {
        Get.to(() => const IntermediateSmasherTrainerProfile());
      },
    ),
    SmashersArenaTrainerModel(
      003,
      "trainer 3 Name",
      "$advanced level Trainer",
      ["Professional Trainer", "help reach higher goals"],
      5,
      advancedTrainerBriefing,
      advancedTrainerBriefing1,
      advancedTrainerDp,
      advancedTrainerBg,
      500.0,
      "6.2 ft",
      "84 kg",
      "23-11-1995"," 1.8 Yrs",
      () {
        Get.to(() => const AdvancedSmasherTrainerProfile());
      },
    ),
  ];
}
