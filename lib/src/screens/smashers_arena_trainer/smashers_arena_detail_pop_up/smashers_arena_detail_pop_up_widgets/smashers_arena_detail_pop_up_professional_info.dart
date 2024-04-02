
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_trainer_data_model/smashers_arena_trainer_model.dart';
import 'package:flutter/material.dart';

class SmasherArenaDetailPopUpWidgetTrainerProfessionalInfo
    extends StatelessWidget {
  const SmasherArenaDetailPopUpWidgetTrainerProfessionalInfo({
    super.key,
    required this.list,
    required this.trainer,
  });

  final List<SmashersArenaTrainerModel> list;
  final int trainer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Text(
              "Rating : ",
              style: Theme.of(context).textTheme.headline4,
            ),
            const Icon(
              Icons.star_border_rounded,
              color: Colors.orangeAccent,
            ),
            Text(
              list[trainer].rating.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
        Text(
          "|",
          style: Theme.of(context).textTheme.headline2,
        ),
        Row(
          children: [
            Text(
              "Experience : ",
              style: Theme.of(context).textTheme.headline4,
            ),
            const Icon(
              Icons.badge_outlined,
              color: Colors.orangeAccent,
            ),
            Text(
              list[trainer].trainerExperience,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ],
    );
  }
}