
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/image.dart';
import '../../../dashboard_menu/my_schedule/my_schedule.dart';
import '../../../smashers_arena_trainer/smashers_arena_trainer_profile/advanced_smasher_arena_trainer_profile.dart';
import '../../../smashers_arena_trainer/smashers_arena_trainer_profile/beginner_smaher_arena_trainer_profile.dart';
import '../../../smashers_arena_trainer/smashers_arena_trainer_profile/intermediate_smasher_arena_trainer_profile.dart';

class SmashArenaDashboardSmallScrollerWidgetModel {
  final String smashTrainerImage;
  final String smashTrainerName;
  final String smashTrainerPrice;
  final VoidCallback? onPress;

  SmashArenaDashboardSmallScrollerWidgetModel(this.smashTrainerImage,
      this.smashTrainerName, this.smashTrainerPrice, this.onPress);

  static List<SmashArenaDashboardSmallScrollerWidgetModel> list = [
    SmashArenaDashboardSmallScrollerWidgetModel(
      smashArenaPlayer1,
      "trainer 1 Name",
      "trainer price",
      () {
        Get.to(() => const BeginnersSmasherTrainerProfile());
      },
    ),
    SmashArenaDashboardSmallScrollerWidgetModel(
      smashArenaPlayer2,
      "trainer 2 Name",
      "trainer price",
      () {
        Get.to(() => const IntermediateSmasherTrainerProfile());
      },
    ),
    SmashArenaDashboardSmallScrollerWidgetModel(
      smashArenaPlayer3,
      "trainer 3 Name",
      "trainer price",
      () {
        Get.to(() => const AdvancedSmasherTrainerProfile());
      },
    ),
    SmashArenaDashboardSmallScrollerWidgetModel(
      smashArenaPlayer4,
      "trainer 4 Name",
      "trainer price",
      () {
        Get.to(() => const MySchedule());
      },
    ),
  ];
}
