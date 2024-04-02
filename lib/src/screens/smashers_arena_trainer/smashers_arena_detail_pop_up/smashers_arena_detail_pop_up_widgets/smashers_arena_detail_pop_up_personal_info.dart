import 'package:eatplayunwind/src/constants/sizes.dart';
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_trainer_data_model/smashers_arena_trainer_model.dart';
import 'package:flutter/material.dart';

class SmashersArenaDetailsPopUpTrainerPersonalInfo extends StatelessWidget {
  const SmashersArenaDetailsPopUpTrainerPersonalInfo({
    super.key,
    required this.list,
    required this.trainer,
  });

  final List<SmashersArenaTrainerModel> list;
  final int trainer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          list[trainer].trainerName.toUpperCase(),
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          list[trainer].trainerCategory.toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .headline5!
              .apply(color: Colors.orangeAccent),
        ),
        const SizedBox(
          height: defaultHeight,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "DOB : ".toUpperCase(),
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              list[trainer].trainerDob.toUpperCase(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Height : ".toUpperCase(),
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              list[trainer].trainerHeight.toUpperCase(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Weight : ".toUpperCase(),
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              list[trainer].trainerWeight.toUpperCase(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ],
    );
  }
}