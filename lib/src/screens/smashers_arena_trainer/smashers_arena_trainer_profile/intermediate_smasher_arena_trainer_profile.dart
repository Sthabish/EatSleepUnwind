import 'package:flutter/material.dart';
import '../smasher_arena_trainer_profile_widgets/smasher_trainer_background_image.dart';
import '../smasher_arena_trainer_profile_widgets/smashers_arena_trainer_profile.dart';

class IntermediateSmasherTrainerProfile extends StatelessWidget {
  const IntermediateSmasherTrainerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //To center the trainer list view
    double trainerItemWidth = size.width / 2 + 48;
    int trainer = 1;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          SmasherTrainerBackgroundImage(trainer: trainer),
          SmashersArenaTrainerProfile(
              trainerItemWidth: trainerItemWidth, trainer: trainer)
        ],
      ),
    );
  }
}
